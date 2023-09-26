import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/nav.dart';
import 'package:toss/screen/notification/vo/vo_notification.dart';
import 'package:toss/screen/notification/w_notification_item.dart';

class NotificationDialog extends DialogWidget {
  final List<TossNotification> notification;
  NotificationDialog(this.notification,
      {super.key, super.animation = NavAni.Bottom});

  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...widget.notification
              .map((e) => NotificationItemWidget(
                  notification: e,
                  onTap: () {
                    widget.hide();
                  }))
              .toList(),
        ],
      ),
    );
  }
}
