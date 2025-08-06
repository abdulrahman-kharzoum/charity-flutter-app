// lib/screens/aids_screen/aids_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart'; // For skeleton loading

import 'package:charity/models/aid_model.dart';
import 'package:charity/models/request_model.dart'; // For RequestStatus if used by AidModel
import 'package:charity/cubits/aids_cubit/aids_cubit.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart'; // Your AppColors

class AidsScreen extends StatelessWidget {
  const AidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => AidsCubit()..fetchAids(),
      child: Builder( // Use Builder to get context descendant of BlocProvider
          builder: (innerContext) {
            return Scaffold(
              backgroundColor: AppColors.myRequestsBackground, // Or a new background color for aids
              appBar: AppBar(
                backgroundColor: AppColors.white,
                elevation: 1.0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, color: AppColors.myRequestsBackButton, size: 24),
                  onPressed: () => Navigator.of(innerContext).pop(),
                ),
                title: Text(
                  l10n.availableAidsTitle,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    color: AppColors.myRequestsTitleText,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                actions: const [
                  SizedBox(width: 40), // Placeholder for potential actions
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                    child: Text(
                      l10n.aidHistoryLabel,
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
                          return _buildSkeletonList(context, 3); // Use the skeleton loader
                        } else if (state is AidsLoaded) {
                          if (state.aids.isEmpty) {
                            return Center(
                              child: Text(
                                l10n.noAidsAvailable,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.myRequestsDescriptionText,
                                    fontFamily: 'Lexend'),
                              ),
                            );
                          }
                          return _buildAidsTimeline(context, state.aids, l10n);
                        } else if (state is AidsError) {
                          return Center(child: Text('${l10n.aidsErrorPrefix}${state.message}', // TODO: Add key
                              style: TextStyle(color: AppColors.requestStatusRejected)));
                        }
                        return Center(child: Text(l10n.aidsUnknownState));
                      },
                    ),
                  ),
                ],
              ),
              // No FAB for adding aids in this screen, presumably.
            );
          }
      ),
    );
  }

  Widget _buildAidsTimeline(BuildContext context, List<AidModel> aids, AppLocalizations l10n) {
    final String currentLocale = l10n.localeName;
    final aidsCubit = context.read<AidsCubit>(); // To access getFormattedDate

    // This Stack is for the vertical timeline bars, similar to MyRequestsScreen
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
        // If you have a second timeline bar like in MyRequestsScreen for some reason
        // Positioned(
        //   left: Directionality.of(context) == TextDirection.rtl ? null : 336.0,
        //   right: Directionality.of(context) == TextDirection.rtl ? 336.0 : null,
        //   top: 0,
        //   bottom: 0,
        //   child: Container(
        //     width: 2.0,
        //     color: AppColors.myRequestsTimelineBorder,
        //   ),
        // ),
        Padding( // Added Padding to match _buildSkeletonList's horizontal padding
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            itemCount: aids.length,
            separatorBuilder: (context, index) => const SizedBox(height: 24),
            itemBuilder: (context, index) {
              final aid = aids[index];
              return _buildAidItem(context, aid, aidsCubit.getFormattedDate(aid.date, currentLocale));
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAidItem(BuildContext context, AidModel aid, String formattedDate) {
    Color statusColor;
    IconData statusIconData;


    switch (aid.status) {
      case RequestStatus.accepted:
        statusColor = AppColors.requestStatusAccepted;
        statusIconData = Icons.check_circle_outline_rounded;
        break;
      case RequestStatus.pending:
        statusColor = AppColors.requestStatusPending;
        statusIconData = Icons.hourglass_empty_rounded;
        break;
      case RequestStatus.rejected:
        statusColor = AppColors.requestStatusRejected;
        statusIconData = Icons.highlight_off_rounded;
        break;
      default:
        statusColor = AppColors.gray500;
        statusIconData = Icons.help_outline;
        break;
    }

    final bool isDataRtl = Directionality.of(context) == TextDirection.rtl; // Assuming your data might be RTL

    Widget statusIconWidget = Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: statusColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: statusColor.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Icon(statusIconData, color: AppColors.white, size: 28),
    );

    Widget contentWidget = Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.myRequestsTimelineBorder, width: 1.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.slate900.withOpacity(0.1), // Softer shadow
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(0, 3),
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
                  aid.statusText, // Use the specific statusText from AidModel
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
              aid.title,
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
              aid.description,
              textDirection: isDataRtl ? TextDirection.rtl : TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Lexend',
                color: AppColors.myRequestsDescriptionText,
                fontSize: 12,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            // Text(
            //   '${l10n.providedByLabel}: ${aid.providedBy}',
            //   textDirection: isDataRtl ? TextDirection.rtl : TextDirection.ltr,
            //   style: TextStyle(
            //     fontFamily: 'Lexend',
            //     color: AppColors.myRequestsDescriptionText.withOpacity(0.8),
            //     fontSize: 11,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
          ],
        ),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Align to top for potentially different text heights
      children: Directionality.of(context) == TextDirection.rtl
          ? [contentWidget, const SizedBox(width: 24), statusIconWidget]
          : [statusIconWidget, const SizedBox(width: 24), contentWidget],
    );
  }

  // --- SKELETON LOADER WIDGETS (Copied & adapted from MyRequestsScreen) ---
  Widget _buildSkeletonRequestItem(BuildContext context) { // Renamed for clarity within AidsScreen
    final bool isRtl = Directionality.of(context) == TextDirection.rtl;
    final Color baseColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.grey[700]!
        : Colors.grey[300]!;
    final Color highlightColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.grey[600]!
        : Colors.grey[100]!;

    Widget statusIconPlaceholder = Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(color: baseColor, shape: BoxShape.circle),
    );

    Widget contentPlaceholder = Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.myRequestsTimelineBorder.withOpacity(0.3), width: 1.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 100, height: 14, color: baseColor), // Status text
                Container(width: 70, height: 14, color: baseColor),  // Date
              ],
            ),
            const SizedBox(height: 10),
            Container(width: double.infinity, height: 20, color: baseColor), // Title
            const SizedBox(height: 8),
            Container(width: MediaQuery.of(context).size.width * 0.6, height: 12, color: baseColor), // Desc line 1
            const SizedBox(height: 6),
            Container(width: MediaQuery.of(context).size.width * 0.5, height: 12, color: baseColor), // Desc line 2
            const SizedBox(height: 8),
            Container(width: MediaQuery.of(context).size.width * 0.4, height: 11, color: baseColor), // Provided by
          ],
        ),
      ),
    );

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: isRtl
            ? [contentPlaceholder, const SizedBox(width: 24), statusIconPlaceholder]
            : [statusIconPlaceholder, const SizedBox(width: 24), contentPlaceholder],
      ),
    );
  }

  Widget _buildSkeletonList(BuildContext context, int itemCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        itemCount: itemCount,
        itemBuilder: (context, index) => _buildSkeletonRequestItem(context),
        separatorBuilder: (context, index) => const SizedBox(height: 24),
      ),
    );
  }
}

