import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:chat/presentation/chat/chats_overview_page.dart';
import 'package:chat/presentation/core/constants.dart';
import 'package:chat/presentation/profile/profile_page.dart';
import 'package:chat/presentation/users/users_overview/users_overview_page.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  final Widget child;

  const ScaffoldWithBottomNavBar({Key? key, required this.child})
      : super(key: key);

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  //int get currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  // int _locationToTabIndex(String location) {
  //   final index = tabs.indexWhere((t) => location == (t.initialLocation));
  //   return index < 0 ? 0 : index;
  // }
  //
  // //callback used to navigate to the desired tab
  // void _onItemTapped(BuildContext context, int tabIndex) {
  //   if (tabIndex != currentIndex) {
  //     // go to the initial location of the selected tab (by index)
  //     context.go(tabs[tabIndex].initialLocation);
  //   }
  // }

  final List<Widget> _mainContents = [
    const UsersOverviewPage(),
    const ChatsOverviewPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
          body: ChatsOverviewPage()));
  }
}

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  const ScaffoldWithNavBarTabItem(
      {required this.initialLocation, required Widget icon, String? label})
      : super(icon: icon, label: label);

  /// The initial location/path
  final String initialLocation;
}

