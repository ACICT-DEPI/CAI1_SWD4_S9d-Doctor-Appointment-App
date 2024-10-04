import 'package:doc_appointment/widget/app_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Notification'),
      body: const Text(
        'Notifications Screen',
      ),
    );
  }
}
