import 'package:flutter/material.dart';
import 'package:srmuh_elearning/constants/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainAppColor,
        title: const Center(child: Text('SRMH One',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}
