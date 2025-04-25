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
      body: Column(
        children: [
          const Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: AppColors.mainAppColor,
                  child: Icon(Icons.add,color: AppColors.kPureWhite,size: 30,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
