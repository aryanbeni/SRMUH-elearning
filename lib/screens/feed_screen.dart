import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainAppColor,
        title: const Center(child: Text('Feeds',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}
