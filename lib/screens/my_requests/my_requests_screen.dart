
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:charity/models/request_model.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/theme/color.dart';

import '../../cubits/my_requests_cubit/my_requests_cubit.dart';

import '../add_request_screen/add_request_screen.dart';


class MyRequestsScreen extends StatelessWidget {
  const MyRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => MyRequestsCubit()..fetchMyRequests(),
      // Use a Builder to get a context that is descendant of BlocProvider
      child: Builder( //  <--- ADDED BUILDER HERE
          builder: (innerContext) { // innerContext can now find MyRequestsCubit
            return Scaffold(
              backgroundColor: AppColors.myRequestsBackground,
              appBar: AppBar(
                backgroundColor: AppColors.white,
                elevation: 1.0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, color: AppColors.myRequestsBackButton, size: 24),
                  onPressed: () => Navigator.of(innerContext).pop(), // Use innerContext if needed for Nav
                ),
                title: Text(
                  l10n.myRequestsTitle,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    color: AppColors.myRequestsTitleText,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                actions: [
                  SizedBox(width: 40),
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                    child: Text(
                      l10n.requestHistoryLabel,
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        color: AppColors.myRequestsTitleText,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: BlocBuilder<MyRequestsCubit, MyRequestsState>(
                      builder: (context, state) { // This context is fine, it's under BlocBuilder
                        if (state is MyRequestsLoading || state is MyRequestsInitial) {
                          return const Center(child: CircularProgressIndicator(color: AppColors.primaryColor));
                        } else if (state is MyRequestsLoaded) {
                          if (state.requests.isEmpty) {
                            return Center(
                              child: Text(
                                l10n.myRequestsNoRequests,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.myRequestsDescriptionText,
                                    fontFamily: 'Lexend'),
                              ),
                            );
                          }
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24.0),
                            // Pass innerContext or context from BlocBuilder, both should work
                            child: _buildRequestsTimeline(context, state.requests, l10n),
                          );
                        } else if (state is MyRequestsError) {
                          return Center(child: Text('${l10n.myRequestsErrorPrefix}${state.message}', style: TextStyle(color: AppColors.requestStatusRejected)));
                        }
                        return Center(child: Text(l10n.myRequestsUnknownState));
                      },
                    ),
                  ),
                ],
              ),
// In MyRequestsScreen's FAB onPressed:
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                    innerContext, // Use the context that's below BlocProvider<MyRequestsCubit>
                    MaterialPageRoute(builder: (_) => const AddRequestScreen()),
                  ).then((result) { // The 'result' is what AddRequestScreen pops
                    if (result != null && result is RequestModel) {
                      // 'result' is the new RequestModel from AddRequestScreen
                      final newRequest = result;
                      print("MyRequestsScreen: Received new request - ${newRequest.title}");
                      innerContext.read<MyRequestsCubit>().addNewRequestLocally(newRequest);
                    } else if (result == true) {
                      // Fallback for older logic or if AddRequestScreen still pops 'true' for some reason
                      // This part might become redundant if AddRequestScreen always pops a RequestModel on success.
                      print("MyRequestsScreen: AddRequestScreen popped 'true', attempting generic fetch.");
                      innerContext.read<MyRequestsCubit>().fetchMyRequests();
                    }
                  });
                },
                // ... rest of your FAB properties
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
    );
  }


  Widget _buildRequestsTimeline(BuildContext context, List<RequestModel> requests, AppLocalizations l10n) {
    final String currentLocale = l10n.localeName;
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
        Positioned(
          left: Directionality.of(context) == TextDirection.rtl ? null :336.0,
          right: Directionality.of(context) == TextDirection.rtl ? 336.0 : null,
          top: 0,
          bottom: 0,
          child: Container(
            width: 2.0,
            color: AppColors.myRequestsTimelineBorder,
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          itemCount: requests.length,
          separatorBuilder: (context, index) => const SizedBox(height: 24),
          itemBuilder: (context, index) {
            final request = requests[index];
            // The context here from ListView.builder is also fine as it's a descendant
            return _buildRequestItem(context, request, context.read<MyRequestsCubit>().getFormattedDate(request.date, currentLocale));
          },
        ),
      ],
    );
  }

  Widget _buildRequestItem(BuildContext context, RequestModel request, String formattedDate) {
    Color statusColor;
    IconData statusIconData;

    switch (request.status) {
      case RequestStatus.accepted:
        statusColor = AppColors.requestStatusAccepted;
        statusIconData = Icons.check_rounded;
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
                  request.statusText,
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
              request.title,
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
              request.description,
              textDirection: isDataRtl ? TextDirection.rtl : TextDirection.ltr,
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
      children: Directionality.of(context) == TextDirection.rtl
          ? [contentWidget, const SizedBox(width: 24), statusIconWidget]
          : [statusIconWidget, const SizedBox(width: 24), contentWidget],
    );
  }
}
