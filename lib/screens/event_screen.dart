import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainAppColor,
        title: const Center(child: Text('Events',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}
