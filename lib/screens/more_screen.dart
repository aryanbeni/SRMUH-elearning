import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  Widget _buildListTile (IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          color: AppColors.mainAppColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:  Icon(icon,color: Colors.white),
        ),
      ),
      title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainAppColor,
        title: const Center(child: Text('More',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body: SingleChildScrollView(child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: AppColors.mainAppColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Icon(Icons.person,color: Colors.white),
              ),
            ),
            title: Text('aryan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            subtitle: Text('wertjkjrtyuigdfgjkklkjh'),
            onTap: () {},
          ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('Extras'),
        ),
        _buildListTile(Icons.bookmark, 'Bookmark', 'Manage your bookmarked'),
          _buildListTile(Icons.menu, 'Your Material', 'All of your uploaded material'),
          _buildListTile(Icons.leaderboard, 'Achievements', 'Explore admin'),
          _buildListTile(Icons.link, 'Useful Links', 'All usefull links'),
          Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('SRMUH'),
        ),
          _buildListTile(Icons.public, 'TPO', 'Training and Placement'),
          _buildListTile(Icons.school, 'Teachers', 'All teachers of SRMUH'),
          _buildListTile(Icons.map, 'SRMUH campus', 'Visit college campus'),
          Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('Utilities'),
        ),
          _buildListTile(Icons.group, 'SELS', 'All SELS members'),
          _buildListTile(Icons.web, 'Website', 'Visit our website'),
          _buildListTile(Icons.feed, 'Feed dump', 'All feed post dump database'),
          _buildListTile(Icons.money, 'Donate', 'Donate to keep it alive'),
          _buildListTile(Icons.settings, 'Settings', 'Theme, share, rate us, etc.'),
          Center(child: Padding(
            padding: const EdgeInsets.only(top:10,bottom: 16.0),
            child: Text('Made with ❤️ by Beniwal',style: TextStyle(color: AppColors.mainAppColor,fontSize: 12),),
          )),
        ],),),
    );
  }
}
