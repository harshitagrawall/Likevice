import 'package:flutter/material.dart';
import 'package:likevice/models/user_notification.dart';
import 'package:likevice/widgets/notification_widget.dart';

class NotificationsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
              child: Text('Notifications', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),

            for(UserNotification notification in notifications) NotificationWidget(notification: notification)
          ],
        )
      ),
    );
  }
}