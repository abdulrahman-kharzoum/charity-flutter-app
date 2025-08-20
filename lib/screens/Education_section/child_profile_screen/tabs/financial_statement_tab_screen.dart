import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/education/child_profile/child_profile_cubit.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/models/financial_record_model.dart';

class FinancialStatementTabScreen extends StatelessWidget {
  const FinancialStatementTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cubit = context.read<ChildProfileCubit>();
    final languageCode = l10n.localeName;
    final isArabic = languageCode == 'ar';

    return BlocBuilder<ChildProfileCubit, ChildProfileState>(
      builder: (context, state) {
        if (state.profile?.financialRecord == null) {
          return Center(
              child: Text(l10n.noFinancialData,
                  style: const TextStyle(fontFamily: 'Lexend')));
        }
        final financialRecord = state.profile!.financialRecord!;

        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment:
            isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              // Overview Section
              _buildSectionTitle(
                  l10n.financialOverviewTitle, context, isArabic),
              _buildFinancialSummaryCards(financialRecord.summary, l10n,
                  cubit, languageCode, isArabic, context),
              const SizedBox(height: 16),

              // Payment History Section
              _buildSectionTitle(l10n.paymentHistoryTitle, context, isArabic),
              ListView.separated(
                physics:
                const NeverScrollableScrollPhysics(), // To use within SingleChildScrollView
                shrinkWrap: true,
                itemCount: financialRecord.paymentHistory.length,
                itemBuilder: (context, index) {
                  final item = financialRecord.paymentHistory[index];
                  return _buildPaymentHistoryItem(
                      item, l10n, cubit, languageCode, isArabic, context);
                },
                separatorBuilder: (context, index) => Divider(
                  height: 1,
                  indent: isArabic ? 0 : 16,
                  endIndent: isArabic ? 16 : 0,
                  color: AppColors.gray200,
                ),
              ),
              const SizedBox(height: 20), // Bottom padding
            ],
          ),
        );
      },
    );
  }

  Widget _buildSectionTitle(
      String title, BuildContext context, bool isArabic) {
    return Padding(
      padding: EdgeInsets.only(
        left: isArabic ? 0 : 16.0,
        right: isArabic ? 16.0 : 0,
        top: 12.0,
        bottom: 8.0,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontFamily: 'Lexend',
          fontSize: 18, // text-lg from HTML
          fontWeight: FontWeight.bold,
        ),
        textAlign: isArabic ? TextAlign.right : TextAlign.left,
      ),
    );
  }

  Widget _buildFinancialSummaryCards(
      FinancialSummary summary,
      AppLocalizations l10n,
      ChildProfileCubit cubit,
      String languageCode,
      bool isArabic,
      BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Expanded(
              child: _buildSummaryCard(
                  l10n.amountDueLabel,
                  cubit.getLocalizedText(summary.amountDue, languageCode),
                  isArabic,
                  context)),
          const SizedBox(width: 16),
          Expanded(
              child: _buildSummaryCard(
                  l10n.amountPaidLabel,
                  cubit.getLocalizedText(summary.amountPaid, languageCode),
                  isArabic,
                  context)),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(
      String title, String amount, bool isArabic, BuildContext context) {
    return Card(
      elevation: 0, // As per HTML (border, no shadow)
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // rounded-xl
        side: const BorderSide(color: AppColors.gray300), // border-[#dde0e3]
      ),
      color: AppColors.white, // bg-white (default, but explicit)
      child: Padding(
        padding: const EdgeInsets.all(16.0), // p-6 (Tailwind p-6 is 1.5rem = 24px, adjust if needed)
        child: Column(
          crossAxisAlignment:
          isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontFamily: 'Lexend',
                fontSize: 16, // text-base
                fontWeight: FontWeight.w500, // font-medium
              ),
              textAlign: isArabic ? TextAlign.right : TextAlign.left,
            ),
            const SizedBox(height: 8), // gap-2
            Text(
              amount,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontFamily: 'Lexend',
                fontSize: 24, // text-2xl
                fontWeight: FontWeight.bold,
              ),
              textAlign: isArabic ? TextAlign.right : TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentHistoryItem(
      PaymentHistoryItem item,
      AppLocalizations l10n,
      ChildProfileCubit cubit,
      String languageCode,
      bool isArabic,
      BuildContext context) {
    return Material( // For InkWell splash effect
      color: AppColors.white,
      child: InkWell(
        onTap: () {
          // Optional: Action on tap, e.g., view payment details
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // px-4 py-2 (Tailwind py-2 is 8px, min-h-[72px] suggests more vertical space, so 12 is a compromise)
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: isArabic
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center, // Vertically center content
                  children: [
                    Text(
                      cubit.getLocalizedText(item.description, languageCode),
                      style: const TextStyle(
                          color: AppColors.textPrimary,
                          fontFamily: 'Lexend',
                          fontSize: 16, // text-base
                          fontWeight: FontWeight.w500 // font-medium
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: isArabic ? TextAlign.right : TextAlign.left,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      cubit.getLocalizedText(item.date, languageCode),
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontFamily: 'Lexend',
                        fontSize: 14, // text-sm
                      ),
                      maxLines: 2, // line-clamp-2
                      overflow: TextOverflow.ellipsis,
                      textAlign: isArabic ? TextAlign.right : TextAlign.left,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: isArabic ? 0 : 8.0, end: isArabic ? 8.0 : 0),
                child: Text(
                  cubit.getLocalizedText(item.amount, languageCode),
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontFamily: 'Lexend',
                    fontSize: 16, // text-base
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
