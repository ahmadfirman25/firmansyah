import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:praktek_fe/modules/attendance.dart';
import 'package:praktek_fe/modules/checkout.dart';
import 'package:praktek_fe/modules/form.dart';
import 'package:praktek_fe/modules/home.dart';
import 'package:praktek_fe/modules/notification.dart';
import 'package:praktek_fe/modules/setting.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  List<PersistentBottomNavBarItem> navbarItems = [
    PersistentBottomNavBarItem(
      // index 0
      icon: const Icon(
        Icons.home,
      ),
      activeColorPrimary: Colors.red,
      inactiveColorPrimary: Colors.grey,
      title: 'Home',
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.calendar_month,
      ),
      activeColorPrimary: Colors.red,
      inactiveColorPrimary: Colors.grey,
      title: 'Attendance',
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.logout,
        color: Colors.white,
      ),
      activeColorSecondary: Colors.red,
      activeColorPrimary: Colors.red,
      inactiveColorPrimary: Colors.red,
      inactiveColorSecondary: Colors.red,
      title: 'Check Out',
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.article,
      ),
      activeColorPrimary: Colors.red,
      inactiveColorPrimary: Colors.grey,
      title: 'Form',
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.settings,
      ),
      activeColorPrimary: Colors.red,
      inactiveColorPrimary: Colors.grey,
      title: 'Setting',
    ),
  ];

  List<Widget> screens = [
    const HomeView(), // index 0
    const AttendanceView(), // index 1
    const CheckOutView(), //
    const FormView(),
    const SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 26,
        title: const Text(
          'KerjaYuk!',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0XFFF95E4E),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationView(),
                ),
              );
            },
            icon: const Icon(
              Icons.notifications_outlined,
              size: 26,
            ),
          ),
        ],
      ),
      body: PersistentTabView(
        context,
        screens: screens,
        items: navbarItems,
        navBarStyle: NavBarStyle.style15,
        backgroundColor: Colors.white,
      ),
    );
  }
}
