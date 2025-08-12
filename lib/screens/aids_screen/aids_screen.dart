// lib/screens/aids_screen/aids_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'package:charity/models/aid_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';

import '../../cubits/aids_cubit/aids_cubit.dart';
import '../../models/common_item_details_model.dart';
import '../item_details/item_details_screen.dart';
// No AddRequestScreen equivalent needed for Aids, so no corresponding import.

class AidsScreen extends StatelessWidget {
  const AidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => AidsCubit()..fetchAids(),
      child: Builder(builder: (innerContext) { // Added Builder for consistent context if needed
        return Scaffold(
          backgroundColor: AppColors.myRequestsBackground, // Same background
          appBar: AppBar(
            backgroundColor: AppColors.white,
            elevation: 1.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: AppColors.myRequestsBackButton, size: 24),
              onPressed: () => Navigator.of(innerContext).pop(),
            ),
            title: Text(
              l10n.availableAidsTitle, // Specific title for Aids
              style: TextStyle(
                fontFamily: 'Lexend',
                color: AppColors.myRequestsTitleText,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: const [ // Same structure as MyRequestsScreen
              SizedBox(width: 40),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                child: Text(
                  l10n.aidHistoryLabel, // Specific label for Aids
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    color: AppColors.myRequestsTitleText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<AidsCubit, AidsState>(
                  builder: (context, state) {
                    if (state is AidsLoading || state is AidsInitial) {
                      return _buildSkeletonList(context, 3); // Same skeleton
                    } else if (state is AidsLoaded) {
                      if (state.aids.isEmpty) {
                        return Center(
                          child: Text(
                            l10n.noAidsAvailable, // Specific message for no aids
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.myRequestsDescriptionText,
                                fontFamily: 'Lexend'),
                          ),
                        );
                      }
                      // Use Padding consistent with MyRequestsScreen's loaded state
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: _buildAidsTimeline(context, state.aids, l10n),
                      );
                    } else if (state is AidsError) {
                      return Center(
                          child: Text('${l10n.aidsErrorPrefix}${state.message}', // Specific error prefix
                              style: TextStyle(color: AppColors.requestStatusRejected)));
                    }
                    return Center(child: Text(l10n.aidsUnknownState)); // Specific unknown state
                  },
                ),
              ),
            ],
          ),
          // No FloatingActionButton for AidsScreen as per MyRequestsScreen's structure
          // If you were to add one, it would go here, similar to MyRequestsScreen,
          // but typically you don't "add an aid" from this screen.
        );
      }),
    );
  }

  // --- TIMELINE BUILDER (Adapted for AidModel) ---
  Widget _buildAidsTimeline(BuildContext context, List<AidModel> aids, AppLocalizations l10n) {
    final String currentLocale = l10n.localeName;
    // The Stack with Positioned timeline bars, identical to MyRequestsScreen
    return Stack(
      children: [
        Positioned(
          left: Directionality.of(context) == TextDirection.rtl ? null : 24.0,
          right: Directionality.of(context) == TextDirection.rtl ? 24.0 : null,
          top: 0,
          bottom: 0,
          child: Container(
            width: 2.0,
            color: AppColors.myRequestsTimelineBorder,
          ),
        ),
        Positioned( // The second timeline bar, ensure its position matches MyRequestsScreen if intended
          left: Directionality.of(context) == TextDirection.rtl ? null :336.0, // Or the correct offset
          right: Directionality.of(context) == TextDirection.rtl ? 336.0 : null, // Or the correct offset
          top: 0,
          bottom: 0,
          child: Container(
            width: 2.0,
            color: AppColors.myRequestsTimelineBorder,
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 24.0), // Consistent padding
          itemCount: aids.length,
          separatorBuilder: (context, index) => const SizedBox(height: 24), // Consistent separator
          itemBuilder: (context, index) {

            final aid = aids[index];
            return GestureDetector(
                onTap: () {
                  final details = CommonItemDetailsModel(
                    id: aid.id,
                    title: aid.title,
                    description: aid.description,
                    statusText: aid.statusText,
                    statusColor: _getAidStatusColor(aid.status),
                    statusIcon: _getAidStatusIcon(aid.status),
                    dateFormatted: context.read<AidsCubit>().getFormattedDate(aid.date, currentLocale),
                    encryptedQRCodeData: aid.encryptedQrDataField ?? "ERROR_NO_QR_DATA_FOR_AID_${aid.id}",
                    itemType: ItemType.aid,
                    providerName: aid.providedBy,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ItemDetailsScreen(itemDetails: details),
                    ),
                  );
                },
                child: _buildAidItem(context, aid, context.read<AidsCubit>().getFormattedDate(aid.date, currentLocale)));
          },
        ),
      ],
    );
  }

  // Helper method to get status color based on AidStatus
  Color _getAidStatusColor(AidStatus status) {
    switch (status) {
      case AidStatus.readyForPickup:
      case AidStatus.received:
        return AppColors.requestStatusAccepted;
      case AidStatus.waiting:
        return AppColors.requestStatusPending;
      case AidStatus.rejected:
        return AppColors.requestStatusRejected;
      default:
        return AppColors.gray500;
    }
  }

  // Helper method to get status icon based on AidStatus
  IconData _getAidStatusIcon(AidStatus status) {
    switch (status) {
      case AidStatus.readyForPickup:
        return Icons.inventory_2_outlined;
      case AidStatus.received:
        return Icons.task_alt_outlined;
      case AidStatus.waiting:
        return Icons.hourglass_empty_rounded;
      case AidStatus.rejected:
        return Icons.close_rounded;
      default:
        return Icons.help_outline;
    }
  }

  Widget _buildAidItem(BuildContext context, AidModel aid, String formattedDate) {
    final Color statusColor = _getAidStatusColor(aid.status);
    final IconData statusIconData = _getAidStatusIcon(aid.status);

    // Assuming your data's text directionality.
    // In MyRequestsScreen, `isDataRtl` was hardcoded to true.
    // For consistency, if your aid data is also always RTL, keep it. Otherwise, adjust.
    const bool isDataRtl = true; // Match MyRequestsScreen behavior

    Widget statusIconWidget = Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: statusColor,
        shape: BoxShape.circle,
        boxShadow: [ // Identical shadow style
          BoxShadow(
            color: statusColor.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
          BoxShadow( // Second shadow for depth, identical to MyRequestsScreen
            color: AppColors.slate900.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Icon(statusIconData, color: AppColors.white, size: 28),
    );

    Widget contentWidget = Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration( // Identical decoration
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.myRequestsTimelineBorder, width: 1.0),
          boxShadow: [ // Identical shadow style
            BoxShadow(
              color: AppColors.slate900.withOpacity(0.2), // Matched MyRequestsScreen
              spreadRadius: 2, // Matched MyRequestsScreen
              blurRadius: 8, // Matched MyRequestsScreen
              offset: const Offset(0, 4), // Matched MyRequestsScreen
            ),
            BoxShadow( // Second shadow, matched MyRequestsScreen
              color: AppColors.slate900.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  aid.statusText, // From AidModel
                  textDirection: isDataRtl ? TextDirection.rtl : TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    color: statusColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    color: AppColors.myRequestsDateText,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              aid.title, // From AidModel
              textDirection: isDataRtl ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Lexend',
                color: AppColors.myRequestsTitleText,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              aid.description, // From AidModel
              textDirection: isDataRtl ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Lexend',
                color: AppColors.myRequestsDescriptionText,
                fontSize: 12,
              ),
              // Consider maxLines and overflow if descriptions can be long,
              // MyRequestsScreen did not specify this, so keeping it open.
            ),
            // If you want to show "Provided By" similar to how you had it commented out
            // in your original aids_screen.dart, you can add it here.
            // For exact match with MyRequestsScreen, this section is omitted.
            // if (aid.providedBy.isNotEmpty) ...[
            //   const SizedBox(height: 8),
            //   Text(
            //     '${l10n.providedByLabel}: ${aid.providedBy}', // Ensure l10n.providedByLabel exists
            //     textDirection: isDataRtl ? TextDirection.rtl : TextDirection.ltr,
            //     style: TextStyle(
            //       fontFamily: 'Lexend',
            //       color: AppColors.myRequestsDescriptionText.withOpacity(0.8),
            //       fontSize: 11,
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ]
          ],
        ),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center, // Matched MyRequestsScreen
      children: Directionality.of(context) == TextDirection.rtl
          ? [contentWidget, const SizedBox(width: 24), statusIconWidget]
          : [statusIconWidget, const SizedBox(width: 24), contentWidget],
    );
  }

  // --- SKELETON LOADER WIDGETS (Identical to MyRequestsScreen) ---
  Widget _buildSkeletonRequestItem(BuildContext context) { // Name kept for direct copy-paste compatibility
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;

    // Use Theme.of(context).brightness to determine colors, same as MyRequestsScreen
    final Color baseColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.gray700 // Or your dark theme skeleton base
        : AppColors.gray300 ; // Or your light theme skeleton base
    final Color highlightColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.gray600 // Or your dark theme skeleton highlight
        : AppColors.gray100; // Or your light theme skeleton highlight


    Widget statusIconPlaceholder = Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: baseColor, // Use the determined baseColor
        shape: BoxShape.circle,
      ),
    );

    Widget contentPlaceholder = Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor, // Consistent with MyRequestsScreen
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.myRequestsTimelineBorder.withOpacity(0.3), width: 1.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 80, height: 14, color: baseColor), // Status text placeholder
                Container(width: 60, height: 14, color: baseColor),  // Date placeholder
              ],
            ),
            const SizedBox(height: 10), // Matched MyRequestsScreen
            Container(width: double.infinity, height: 20, color: baseColor), // Title placeholder
            const SizedBox(height: 8), // Matched MyRequestsScreen
            Container(width: MediaQuery.of(context).size.width * 0.6, height: 12, color: baseColor), // Desc line 1
            const SizedBox(height: 6), // Matched MyRequestsScreen
            Container(width: MediaQuery.of(context).size.width * 0.5, height: 12, color: baseColor), // Desc line 2
          ],
        ),
      ),
    );

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Matched MyRequestsScreen
        children: isRtl
            ? [contentPlaceholder, const SizedBox(width: 24), statusIconPlaceholder]
            : [statusIconPlaceholder, const SizedBox(width: 24), contentPlaceholder],
      ),
    );
  }

  // Helper method to build the list of skeleton items (Identical to MyRequestsScreen)
  Widget _buildSkeletonList(BuildContext context, int itemCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0), // Consistent padding
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 24.0), // Consistent padding
        itemCount: itemCount,
        itemBuilder: (context, index) => _buildSkeletonRequestItem(context), // Uses the identical skeleton item
        separatorBuilder: (context, index) => const SizedBox(height: 24), // Consistent separator
      ),
    );
  }
}
