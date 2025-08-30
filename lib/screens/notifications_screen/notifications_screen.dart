import 'package:flutter/material.dart';
import 'package:charity/l10n/app_localizations.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Dummy data for notifications
    final notifications = [
      {
        'title': 'New Donation Received',
        'body': 'You have received a new donation of \$50.',
        'time': '10:30 AM',
        'icon': Icons.favorite,
        'color': Colors.red,
      },
      {
        'title': 'Campaign Update',
        'body': 'The "Help the Children" campaign has reached 50% of its goal.',
        'time': 'Yesterday',
        'icon': Icons.campaign,
        'color': Colors.blue,
      },
      {
        'title': 'New Message',
        'body': 'You have a new message from a supporter.',
        'time': '2 days ago',
        'icon': Icons.message,
        'color': Colors.green,
      },
    ];

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
      body: ListView.builder(
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
                backgroundColor: notification['color'] as Color,
                child: Icon(notification['icon'] as IconData, color: Colors.white),
              ),
              title: Text(
                notification['title'] as String,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(notification['body'] as String),
              trailing: Text(notification['time'] as String),
            ),
          );
        },
      ),
    );
  }
}