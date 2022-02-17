import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_website/screens/dashboard/dashboard_screen.dart';

import './components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
