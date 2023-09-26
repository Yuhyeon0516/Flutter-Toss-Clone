import 'package:flutter/material.dart';
import 'package:toss/common/common.dart';
import 'package:toss/screen/notification/d_notification.dart';
import 'package:toss/screen/notification/notification_dummy.dart';
import 'package:toss/screen/notification/w_notification_item.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.appBarBackground,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            centerTitle: false,
            backgroundColor: Color.fromARGB(255, 16, 16, 18),
            title: Text("알림"),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => NotificationItemWidget(
              notification: notificationDummies[index],
              onTap: () {
                NotificationDialog(
                    [notificationDummies[0], notificationDummies[1]]).show();
              },
            ),
            childCount: notificationDummies.length,
          ))
        ],
      ),
    );
  }
}
