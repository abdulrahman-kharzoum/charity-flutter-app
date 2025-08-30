import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/models/request_model.dart'; // Import RequestStatus
import 'package:charity/core/services/status.dart';
import 'package:charity/core/services/failure_service/failure.dart';
import 'package:charity/core/services/service_locator.dart';
import 'package:charity/features/Services/qr/cubits/generate_aid_qr_code_cubit/generate_aid_qr_code_cubit.dart';

import 'package:charity/features/Services/requests_aids/cubits/get_beneficiary_aids_cubit/get_beneficiary_aids_cubit.dart';
import 'package:charity/features/Services/requests_aids/models/beneficiary_aids_model.dart';
import 'package:charity/features/Services/requests_aids/models/plan_model.dart';
import 'package:charity/features/Services/requests_aids/models/salary_model.dart';

import '../../models/common_item_details_model.dart';
import '../item_details/item_details_screen.dart';

class AidsScreen extends StatelessWidget {
  const AidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => GetBeneficiaryAidsCubit(sl())..getBeneficiaryAids(),
      child: Builder(builder: (innerContext) { // Added Builder for consistent context if needed
        return Column(
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
                child: BlocBuilder<GetBeneficiaryAidsCubit, GetBeneficiaryAidsState>(
                  builder: (context, state) {
                    if (state.status == SubmissionStatus.loading || state.status == SubmissionStatus.initial) {
                      return _buildSkeletonList(context, 3); // Same skeleton
                    } else if (state.status == SubmissionStatus.success) {
                      final allAids = <dynamic>[];
                      if (state.data != null) {
                        allAids.addAll(state.data!.plans);
                        allAids.addAll(state.data!.salaries);
                      }

                      if (allAids.isEmpty) {
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
                        child: _buildAidsTimeline(context, allAids, l10n),
                      );
                    } else if (state.status == SubmissionStatus.error) {
                      return Center(
                          child: Text('${l10n.aidsErrorPrefix}${state.failure?.message ?? 'Unknown error'}', // Specific error prefix
                               style: TextStyle(color: AppColors.requestStatusRejected)));
                    }
                    return Center(child: Text(l10n.aidsUnknownState)); // Specific unknown state
                  },
                ),
              ),
            ],
          );

      }),
    );
  }

  // --- TIMELINE BUILDER (Adapted for PlanModel and SalaryModel) ---
  Widget _buildAidsTimeline(BuildContext context, List<dynamic> allAids, AppLocalizations l10n) {
    final String currentLocale = l10n.localeName;
    return Stack(
      children: [
        Positioned(
          left: Directionality.of(context) == ui.TextDirection.rtl ? null : 24.0,
          right: Directionality.of(context) == ui.TextDirection.rtl ? 24.0 : null,
          top: 0,
          bottom: 0,
          child: Container(
            width: 2.0,
            color: AppColors.myRequestsTimelineBorder,
          ),
        ),
        Positioned(
          left: Directionality.of(context) == ui.TextDirection.rtl ? null :336.0,
          right: Directionality.of(context) == ui.TextDirection.rtl ? 336.0 : null,
          top: 0,
          bottom: 0,
          child: Container(
            width: 2.0,
            color: AppColors.myRequestsTimelineBorder,
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          itemCount: allAids.length,
          separatorBuilder: (context, index) => const SizedBox(height: 24),
          itemBuilder: (context, index) {
            final item = allAids[index];
            String id;
            String title;
            String description;
            String statusText;
            String status;
            String providedBy = '';
            DateTime date;
            String? encryptedQrDataField;

            if (item is PlanModel) {
              id = item.id.toString();
              title = item.name;
              description = item.description;
              statusText = item.beneficiary.hasTaken
                  ? l10n.received
                  : (item.beneficiary.receivedAt == null ? l10n.pending : l10n.readyForPickup);
              status = item.beneficiary.hasTaken
                  ? 'received'
                  : (item.beneficiary.receivedAt == null ? 'pending' : 'readyForPickup');
              providedBy = item.category.name; // Using type as provider for plans
              date = item.beneficiary.receivedAt != null
                  ? DateTime.tryParse(item.beneficiary.receivedAt!)!
                  : DateTime.tryParse(item.beneficiary.turnUntil) ?? DateTime.now(); // Fallback to turnUntil or now
              encryptedQrDataField = null; // Plans don't have QR codes directly
            } else if (item is SalaryModel) {
              id = item.id.toString();
              title = l10n.salaryAidTitle; // A generic title for salary
              description = '${l10n.amount}: ${item.amount.toString()}'; // Convert int to String
              statusText = item.hasTaken
                  ? l10n.received
                  : (item.receivedAt == null ? l10n.pending : l10n.readyForPickup);
              status = item.hasTaken
                  ? 'received'
                  : (item.receivedAt == null ? 'pending' : 'readyForPickup');
              providedBy = ''; // No direct provider for salary model
              date = item.receivedAt != null
                  ? DateTime.tryParse(item.receivedAt!)!
                  : DateTime.tryParse(item.issuedAt) ?? DateTime.now(); // Fallback to issuedAt or now
              encryptedQrDataField = null; // Salaries don't have QR codes directly
            } else {
              // Fallback for unexpected types
              id = 'unknown';
              title = l10n.unknownAid;
              description = '';
              statusText = '';
              status = '';
              date = DateTime.now(); // Fallback for unknown types
              encryptedQrDataField = null;
            }

            return GestureDetector(
                onTap: () {
                  final details = CommonItemDetailsModel(
                    id: id,
                    title: title,
                    description: description,
                    statusText: statusText,
                    statusColor: _getAidStatusColor(status),
                    statusIcon: _getAidStatusIcon(status),
                    dateFormatted: _getFormattedDate(date, currentLocale),
                    encryptedQRCodeData: encryptedQrDataField ?? "ERROR_NO_QR_DATA_FOR_AID_$id",
                    itemType: ItemType.aid,
                    providerName: providedBy,
                    status: _mapAidStatusToRequestStatus(status),
                    requestType: item is PlanModel ? 'plan' : (item is SalaryModel ? 'salary' : null),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlocProvider(
                        create: (context) => sl<GenerateAidQrCodeCubit>(),
                        child: ItemDetailsScreen(itemDetails: details),
                      ),
                    ),
                  );
                },
                child: _buildAidItem(context, item, _getFormattedDate(date, currentLocale), statusText, status));
          },
        ),
      ],
    );
  }

  // Helper method to get status color based on a string status
  Color _getAidStatusColor(String status) {
    switch (status) {
      case 'readyForPickup':
      case 'received':
        return AppColors.requestStatusAccepted;
      case 'waiting':
        return AppColors.requestStatusPending;
      case 'rejected':
        return AppColors.requestStatusRejected;
      default:
        return AppColors.gray500;
    }
  }

  // Helper method to get status icon based on a string status
  IconData _getAidStatusIcon(String status) {
    switch (status) {
      case 'readyForPickup':
        return Icons.inventory_2_outlined;
      case 'received':
        return Icons.task_alt_outlined;
      case 'waiting':
        return Icons.hourglass_empty_rounded;
      case 'rejected':
        return Icons.close_rounded;
      default:
        return Icons.help_outline;
    }
  }

  Widget _buildAidItem(BuildContext context, dynamic item, String formattedDate, String statusText, String status) {
    String title;
    String description;

    if (item is PlanModel) {
      title = item.name;
      description = item.description;
    } else if (item is SalaryModel) {
      title = AppLocalizations.of(context)!.salaryAidTitle;
      description = '${AppLocalizations.of(context)!.amount}: ${item.amount.toString()}';
    } else {
      title = AppLocalizations.of(context)!.unknownAid;
      description = '';
    }

    final Color statusColor = _getAidStatusColor(status);
    final IconData statusIconData = _getAidStatusIcon(status);

    const bool isDataRtl = true;

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
          BoxShadow(
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
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.myRequestsTimelineBorder, width: 1.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.slate900.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
            BoxShadow(
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
                  statusText,
                  textDirection: isDataRtl ? ui.TextDirection.rtl : ui.TextDirection.ltr,
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
              title,
              textDirection: isDataRtl ? ui.TextDirection.rtl : ui.TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Lexend',
                color: AppColors.myRequestsTitleText,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              textDirection: isDataRtl ? ui.TextDirection.rtl : ui.TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Lexend',
                color: AppColors.myRequestsDescriptionText,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: Directionality.of(context) == ui.TextDirection.rtl
          ? [contentWidget, const SizedBox(width: 24), statusIconWidget]
          : [statusIconWidget, const SizedBox(width: 24), contentWidget],
    );
  }

  String _getFormattedDate(DateTime date, String localeName) {
    final day = date.day;
    final year = date.year;

    if (localeName == 'ar') {
      final monthNamesAr = [
        '', 'يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو',
        'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر'
      ];
      return '$day ${monthNamesAr[date.month]} $year';
    } else {
      return DateFormat('d MMMM yyyy').format(date);
    }
  }

  RequestStatus _mapAidStatusToRequestStatus(String status) {
    switch (status) {
      case 'readyForPickup':
      case 'received':
        return RequestStatus.received;
      case 'waiting':
        return RequestStatus.pending;
      case 'rejected':
        return RequestStatus.rejected;
      default:
        return RequestStatus.pending;
    }
  }
}

  // --- SKELETON LOADER WIDGETS (Identical to MyRequestsScreen) ---
  Widget _buildSkeletonRequestItem(BuildContext context) { // Name kept for direct copy-paste compatibility
    final bool isRtl = Directionality.of(context) == ui.TextDirection.rtl;

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
