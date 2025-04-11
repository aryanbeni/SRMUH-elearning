import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainAppColor,
        title: const Center(child: Text('Explore',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}
