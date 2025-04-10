import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:srmuh_elearning/bloc/bloc_cubit.dart';
import 'package:srmuh_elearning/bloc/bloc_state.dart';
import 'package:srmuh_elearning/screens/event_screen.dart';
import 'package:srmuh_elearning/screens/explore_screen.dart';
import 'package:srmuh_elearning/screens/feed_screen.dart';
import 'package:srmuh_elearning/screens/more_screen.dart';

import 'home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> navTabs = [
    HomeScreen(),
    FeedScreen(),
    ExploreScreen(),
    EventScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(
  builder: (context, state) {
    return Scaffold(
      body: navTabs.elementAt(state.selectedIndex),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
    context.read<NavCubit>().tapNav(index);
    },
          selectedIndex: state.selectedIndex,
        destinations: const <Widget> [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.feed), label: 'Feeds'),
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.event_available), label: 'Events'),
          NavigationDestination(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  },
);
  }
}
