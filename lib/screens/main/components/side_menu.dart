import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/logo.png")),
            DrawerListTile(
              press: () {},
              title: "Dashboard",
              svgSrc: "assets/icons/menu_dashbord.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Transaction",
              svgSrc: "assets/icons/menu_tran.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Task",
              svgSrc: "assets/icons/menu_task.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Documents",
              svgSrc: "assets/icons/menu_doc.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Store",
              svgSrc: "assets/icons/menu_store.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
            ),
            DrawerListTile(
              press: () {},
              title: "Settings",
              svgSrc: "assets/icons/menu_setting.svg",
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
