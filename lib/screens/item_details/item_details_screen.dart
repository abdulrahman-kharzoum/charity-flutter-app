import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart'; // You'll need to add this dependency
import 'package:charity/models/common_item_details_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/models/request_model.dart'; // Import RequestStatus
import 'package:charity/theme/color.dart'; // For AppColors if needed
import 'package:charity/core/services/status.dart'; // For SubmissionStatus
import 'package:charity/core/services/service_locator.dart'; // For service locator
import 'package:charity/features/Services/qr/cubits/generate_aid_qr_code_cubit/generate_aid_qr_code_cubit.dart';

class ItemDetailsScreen extends StatefulWidget {
  final CommonItemDetailsModel itemDetails;

  const ItemDetailsScreen({super.key, required this.itemDetails});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger QR code generation when the screen initializes
    final qrType = _mapRequestTypeForQrApi(widget.itemDetails.requestType);
    if (widget.itemDetails.status == RequestStatus.pending ||
        widget.itemDetails.status == RequestStatus.rejected ||
        qrType == null) {
      // If status is pending/rejected or type is prescription, do not generate QR.
      // Instead, set the state to success with null data to indicate no QR.
      context.read<GenerateAidQrCodeCubit>().emit(
          const GenerateAidQrCodeState(
              status: SubmissionStatus.success, data: null));
    } else {
      context.read<GenerateAidQrCodeCubit>().generateAidQrCode(
            entityId: int.parse(widget.itemDetails.id),
            type: qrType,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.itemDetails.itemType == ItemType.request
            ? l10n.requestDetailsTitle
            : l10n.aidDetailsTitle),
        backgroundColor: AppColors.white,
        elevation: 1.0,
        iconTheme: IconThemeData(color: AppColors.myRequestsBackButton),
        titleTextStyle: TextStyle(
            fontFamily: 'Lexend',
            color: AppColors.myRequestsTitleText,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlocBuilder<GenerateAidQrCodeCubit, GenerateAidQrCodeState>(
              builder: (context, state) {
                if (state.status == SubmissionStatus.loading || state.status == SubmissionStatus.initial) {
                  return Center(
                    child: CircularProgressIndicator(color: AppColors.primaryColor),
                  );
                } else if (state.status == SubmissionStatus.success) {
                  final String? qrData = state.data?.qrCode;
                  if (qrData == null || qrData.isEmpty) {
                    return const SizedBox.shrink(); // Return empty widget if no QR data
                  }
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: AppColors.primaryColor, width: 2.0),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primaryColor.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            l10n.scanToConfirmReceived,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.myRequestsTitleText,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          QrImageView(
                            data: qrData,
                            version: QrVersions.auto,
                            size: 250.0,
                            gapless: false,
                            errorStateBuilder: (cxt, err) {
                              return Center(
                                child: Text(
                                  l10n.qrError,
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                } else if (state.status == SubmissionStatus.error) {
                  return const SizedBox.shrink(); // Return empty widget on error, as requested
                }
                return const SizedBox.shrink(); // Fallback for other states
              },
            ),
            const SizedBox(height: 24),

            // Item Title
            Text(
              widget.itemDetails.title,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsTitleText),
            ),
            const SizedBox(height: 8),

            // Item Status
            Row(
              children: [
                Icon(widget.itemDetails.statusIcon, color: widget.itemDetails.statusColor, size: 20),
                const SizedBox(width: 8),
                Text(
                  widget.itemDetails.statusText,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lexend',
                      color: widget.itemDetails.statusColor),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Date
            Text(
              "${l10n.dateLabel}: ${widget.itemDetails.dateFormatted}",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsDateText),
            ),
            const SizedBox(height: 16),

            // Description
            Text(
              l10n.descriptionLabel,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsTitleText.withOpacity(0.8)),
            ),
            const SizedBox(height: 4),
            Text(
              widget.itemDetails.description,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Lexend',
                  color: AppColors.myRequestsDescriptionText,
                  height: 1.4),
            ),
          ],
        ),
      ),
    );
  }

  String? _mapRequestTypeForQrApi(String? requestType) {
    switch (requestType) {
      case 'instantAid':
        return 'instant_aid';
      case 'needRequest':
        return 'need_request';
      case 'salary':
        return 'salary';
      case 'plan':
        return 'plan';
      case 'prescription': // Prescriptions don't have QR codes
        return null;
      default:
        return null;
    }
  }
}
