import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/features/notifications/cubits/get_my_notifications_cubit/get_my_notifications_cubit.dart';
import 'package:charity/core/services/status.dart';
import 'package:charity/core/shared/components/loading_widget.dart';
import 'package:charity/core/shared/components/error_widget.dart';
import 'package:charity/features/notifications/models/notification_model.dart';
import 'package:charity/features/notifications/models/notification_data_model.dart';


class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetMyNotificationsCubit>().getMyNotifications();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.notifications),
        backgroundColor: isDark ? Colors.grey[850] : Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: isDark ? Colors.white : Colors.black),
        titleTextStyle: TextStyle(
            color: isDark ? Colors.white : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: BlocBuilder<GetMyNotificationsCubit, GetMyNotificationsState>(
        builder: (context, state) {
          if (state.status == SubmissionStatus.loading) {
            return const LoadingWidget();
          } else if (state.status == SubmissionStatus.error) {
            return ShowErrorWidget(
              onPressed: () {
                context.read<GetMyNotificationsCubit>().getMyNotifications();
              },
            );
          } else if (state.status == SubmissionStatus.success) {
            final notifications = state.data ?? [];
            if (notifications.isEmpty) {
              return Center(child: Text(localizations.noNotifications));
            }
            return ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue, // Placeholder color
                      child: Icon(Icons.notifications, color: Colors.white), // Placeholder icon
                    ),
                    title: Text(
                      notification.data.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(notification.data.body),
                    trailing: Text(notification.data.notifiedAt),
                  ),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}