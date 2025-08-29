import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui' as ui;


import 'package:charity/models/request_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:shimmer/shimmer.dart';
import 'package:charity/core/shared/local_network.dart'; // Import CacheNetwork
import 'package:charity/features/Services/requests_aids/cubits/get_beneficiary_requests_cubit/get_beneficiary_requests_cubit.dart';
import 'package:charity/cubits/localization/localization_cubit.dart'; // Import LocalizationCubit
import 'package:charity/features/Services/qr/cubits/generate_aid_qr_code_cubit/generate_aid_qr_code_cubit.dart'; // Import GenerateAidQrCodeCubit

import 'package:charity/features/Services/requests_aids/models/beneficiary_requests_model.dart';
import 'package:charity/features/Services/requests_aids/models/instant_aid_model.dart';
import 'package:charity/features/Services/requests_aids/models/prescription_model.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/core/services/service_locator.dart'; // Import service_locator for GetIt
import 'package:intl/intl.dart';


import 'package:charity/models/common_item_details_model.dart';
import 'package:charity/screens/item_details/item_details_screen.dart';
import '../add_request_screen/add_request_screen.dart';


class MyRequestsScreen extends StatefulWidget {
  const MyRequestsScreen({super.key});

  @override
  State<MyRequestsScreen> createState() => _MyRequestsScreenState();
}

class _MyRequestsScreenState extends State<MyRequestsScreen> {
  @override
  late ui.TextDirection _currentTextDirection;

  @override
  void initState() {
    super.initState();
    _currentTextDirection = ui.TextDirection.ltr; // Default or initial value
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => sl<GetBeneficiaryRequestsCubit>()
        ..getBeneficiaryRequests(beneficiaryId: int.parse(CacheNetwork.getBeneficiaryId() ?? '0')),

      child: BlocListener<LocalizationCubit, LocalizationState>(
        listener: (context, state) {
          setState(() {
            _currentTextDirection = state.locale.languageCode == 'ar' ? ui.TextDirection.rtl : ui.TextDirection.ltr;
          });
        },
        child: Builder(
            builder: (innerContext) {
              return Scaffold(
                backgroundColor: AppColors.myRequestsBackground,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                      child: Align(
                        alignment: _currentTextDirection == ui.TextDirection.rtl ? Alignment.centerRight : Alignment.centerLeft,
                        child: Text(
                          l10n.requestHistoryLabel,
                          textDirection: _currentTextDirection,
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            color: AppColors.myRequestsTitleText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          innerContext.read<GetBeneficiaryRequestsCubit>()
                              .getBeneficiaryRequests(beneficiaryId: int.parse(CacheNetwork.getBeneficiaryId() ?? '0'));
                        },
                        child: BlocBuilder<GetBeneficiaryRequestsCubit, GetBeneficiaryRequestsState>(
                          builder: (context, state) {
                            if (state.status == SubmissionStatus.loading || state.status == SubmissionStatus.initial) {
                              return _buildSkeletonList(context, 3);
                            } else if (state.status == SubmissionStatus.success) {
                              final List<RequestModel> requests = _mapBeneficiaryRequestsToRequestModel(state.data!);
                              if (requests.isEmpty) {
                                return Center(
                                  child: Text(
                                    l10n.myRequestsNoRequests,
                                    textDirection: _currentTextDirection,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.myRequestsDescriptionText,
                                        fontFamily: 'Lexend'),
                                  ),
                                );
                              }
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                child: _buildRequestsTimeline(context, requests, l10n),
                              );
                            } else if (state.status == SubmissionStatus.error) {
                              return Center(child: Text('${l10n.myRequestsErrorPrefix}${state.failure?.message ?? "Unknown error"}', style: TextStyle(color: AppColors.requestStatusRejected), textDirection: _currentTextDirection,));
                            }
                            return Center(child: Text(l10n.myRequestsUnknownState, textDirection: _currentTextDirection,));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () async { // Changed to async to await pop
                  final result = await Navigator.push(
                    innerContext,
                    MaterialPageRoute(builder: (_) => const AddRequestScreen()),
                  );
                  if (result != null && result is RequestModel) {
                    print("MyRequestsScreen: Received new request - ${result.title}");
                    // Optionally, re-fetch data or update locally if AddRequestScreen adds data.
                    // For now, re-fetching to ensure data consistency from the backend.
                    innerContext.read<GetBeneficiaryRequestsCubit>()
                        .getBeneficiaryRequests(beneficiaryId: int.parse(CacheNetwork.getBeneficiaryId() ?? '0'));
                  } else if (result == true) {
                    print("MyRequestsScreen: AddRequestScreen popped 'true', attempting generic fetch.");
                    innerContext.read<GetBeneficiaryRequestsCubit>()
                        .getBeneficiaryRequests(beneficiaryId: int.parse(CacheNetwork.getBeneficiaryId() ?? '0'));
                  }
                },

                  label: Text(
                    l10n.addRequestButtonLabel,
                    style: TextStyle(fontFamily: 'Lexend', color: AppColors.white, fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(Icons.add, color: AppColors.white),
                  backgroundColor: AppColors.primaryColor,
                  elevation: 4.0,
                ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              );
            }
        ),
      ),
    );
  }

  List<RequestModel> _mapBeneficiaryRequestsToRequestModel(BeneficiaryRequestsModel data) {
    final List<RequestModel> requests = [];

    // Map InstantAidModel to RequestModel
    for (var instantAid in data.instantAids) {
      requests.add(
        RequestModel(
          id: instantAid.id.toString(),
          title: 'Instant Aid: ${instantAid.reason}',
          description: 'Amount: ${instantAid.amount}, Urgency: ${instantAid.urgencyLevel}',
          date: DateTime.tryParse(instantAid.receivedAt), // Assuming receivedAt is a valid date string
          status: _mapRequestStatus(instantAid.requestStatus),
          statusText: instantAid.requestStatus,
          encryptedQrDataField: null, // InstantAids might not have QR data
          requestType: 'instantAid', // Pass the type for QR generation
        ),
      );
    }

    // Map PrescriptionModel to RequestModel
    for (var prescription in data.prescriptions) {
      requests.add(
        RequestModel(
          id: prescription.id.toString(),
          title: 'Prescription: ${prescription.reason}',
          description: prescription.description,
          date: DateTime.tryParse(prescription.createdAt), // Assuming createdAt is a valid date string
          status: _mapRequestStatus(prescription.requestStatus),
          statusText: prescription.requestStatus,
          encryptedQrDataField: null, // Prescriptions might not have QR data
          requestType: 'prescription', // Pass the type for QR generation
        ),
      );
    }

    // Map NeedRequestModel to RequestModel
    for (var needRequest in data.needRequests) {
      requests.add(
        RequestModel(
          id: needRequest.id.toString(),
          title: 'Need Request: ${needRequest.reason}',
          description: needRequest.description ?? '', // Provide empty string if null
          date: needRequest.receivedAt != null ? DateTime.tryParse(needRequest.receivedAt!) : null,
          status: _mapRequestStatus(needRequest.requestStatus),
          statusText: needRequest.requestStatus,
          encryptedQrDataField: null, // NeedRequests might not have QR data
          requestType: 'needRequest', // Pass the type for QR generation
        ),
      );
    }

    // Sort requests by date, newest first
    requests.sort((a, b) {
      if (a.date == null && b.date == null) return 0;
      if (a.date == null) return 1; // Nulls come after non-nulls
      if (b.date == null) return -1; // Nulls come after non-nulls
      return b.date!.compareTo(a.date!);
    });

    return requests;
  }

  RequestStatus _mapRequestStatus(String statusText) {
    switch (statusText.toLowerCase()) {
      case 'accepted':
        return RequestStatus.accepted;
      case 'received':
        return RequestStatus.received;
      case 'pending':
        return RequestStatus.pending;
      case 'rejected':
        return RequestStatus.rejected;
      default:
        return RequestStatus.pending; // Default or unknown status
    }
  }


  Widget _buildRequestsTimeline(BuildContext context, List<RequestModel> requests, AppLocalizations l10n) {
    final String currentLocale = l10n.localeName;
    final bool isRtl = _currentTextDirection == ui.TextDirection.rtl;

    return Stack(
      children: [
        Positioned(
          left: isRtl ? null : 24.0,
          right: isRtl ? 24.0 : null,
          top: 0,
          bottom: 0,
          child: Container(
            width: 2.0,
            color: AppColors.myRequestsTimelineBorder,
          ),
        ),
        Positioned(
          left: isRtl ? null :336.0,
          right: isRtl ? 336.0 : null,
          top: 0,
          bottom: 0,
          child: Container(
            width: 2.0,
            color: AppColors.myRequestsTimelineBorder,
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.only(top: 24.0, bottom: 100.0),
          itemCount: requests.length,
          separatorBuilder: (context, index) => const SizedBox(height: 24),
          itemBuilder: (context, index) {
            final request = requests[index];
            final String formattedDate = request.date != null ? DateFormat('d MMMM yyyy', currentLocale).format(request.date!) : 'Unknown Date';
            Color statusColor;
            IconData statusIconData;
            switch (request.status) {
              case RequestStatus.accepted:
                statusColor = AppColors.requestStatusAccepted;
                statusIconData = Icons.inventory_2_outlined;
                break;
              case RequestStatus.received:
                statusColor = AppColors.requestStatusAccepted;
                statusIconData = Icons.task_alt_outlined;
                break;
              case RequestStatus.pending:
                statusColor = AppColors.requestStatusPending;
                statusIconData = Icons.hourglass_empty_rounded;
                break;
              case RequestStatus.rejected:
                statusColor = AppColors.requestStatusRejected;
                statusIconData = Icons.close_rounded;
                break;
              default:
                statusColor = AppColors.gray500;
                statusIconData = Icons.help_outline;
                break;
            }
            return GestureDetector(
                onTap: () {
                  final details = CommonItemDetailsModel(
                    id: request.id,
                    title: request.title,
                    description: request.description,
                    statusText: request.statusText,
                    statusColor: statusColor,
                    statusIcon: statusIconData,
                    dateFormatted: formattedDate,
                    encryptedQRCodeData: request.encryptedQrDataField ?? "ERROR_NO_QR_DATA_FOR_REQUEST_${request.id}",
                    itemType: ItemType.request,
                    requestType: request.requestType, // Pass the requestType
                    status: request.status, // Pass the RequestStatus enum
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
                child: _buildRequestItem(context, request, formattedDate, statusColor, statusIconData, isRtl));
          },
        ),
      ],
    );
  }

  Widget _buildRequestItem(BuildContext context, RequestModel request, String formattedDate, Color statusColor, IconData statusIconData, bool isRtl) {

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
          crossAxisAlignment: isRtl ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  request.statusText,
                  textDirection: isRtl ? ui.TextDirection.rtl : ui.TextDirection.ltr,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    color: statusColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  formattedDate,
                  textDirection: isRtl ? ui.TextDirection.rtl : ui.TextDirection.ltr,
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
              request.title,
              textDirection: isRtl ? ui.TextDirection.rtl : ui.TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Lexend',
                color: AppColors.myRequestsTitleText,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              request.description,
              textDirection: isRtl ? ui.TextDirection.rtl : ui.TextDirection.ltr,
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
      children: isRtl
          ? [contentWidget, const SizedBox(width: 24), statusIconWidget]
          : [statusIconWidget, const SizedBox(width: 24), contentWidget],
    );

  }

  Widget _buildSkeletonRequestItem(BuildContext context) {
    final bool isRtl = _currentTextDirection == ui.TextDirection.rtl;

    final Color baseColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.gray700
        : AppColors.gray300 ;
    final Color highlightColor = Theme.of(context).brightness == Brightness.dark
        ?AppColors.gray600
        :AppColors.gray300;

    Widget statusIconPlaceholder = Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: baseColor,
        shape: BoxShape.circle,
      ),
    );

    Widget contentPlaceholder = Expanded(
      child: Container(
        padding: const EdgeInsets.all(16.0), // Matches your _buildRequestItem content padding
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor, // Use cardColor for background or a specific skeleton bg
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.myRequestsTimelineBorder.withOpacity(0.3), width: 1.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 80, height: 14, color: baseColor),
                Container(width: 60, height: 14, color: baseColor),
              ],
            ),
            const SizedBox(height: 10),
            Container(width: double.infinity, height: 20, color: baseColor),
            const SizedBox(height: 8), // Increased spacing
            Container(width: MediaQuery.of(context).size.width * 0.6, height: 12, color: baseColor),
            const SizedBox(height: 6),
            Container(width: MediaQuery.of(context).size.width * 0.5, height: 12, color: baseColor),
          ],
        ),
      ),
    );

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: isRtl
            ? [contentPlaceholder, const SizedBox(width: 24), statusIconPlaceholder]
            : [statusIconPlaceholder, const SizedBox(width: 24), contentPlaceholder],
      ),
    );
  }

  // Helper method to build the list of skeleton items
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
