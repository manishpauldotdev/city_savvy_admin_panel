import 'package:city_savvy_admin_panel/features/home/presentations/widgets/menu_item.dart';
import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

Widget desktopView(BuildContext context) {
  final deviceWidth = MediaQuery.sizeOf(context).width;
  // final deviceHeight = MediaQuery.sizeOf(context).height;
  return Row(
    children: [
      Container(
        width: deviceWidth * 0.15,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 240, 240, 240),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'City Savvy',
                style: TextStyle(
                  color: AppColors.colorPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            const Divider(
                // indent: 16,
                // endIndent: 16,
                ),
            const MenuItem(
              menuIcon: Icons.space_dashboard_outlined,
              menuTitle: 'Dashboard',
            ),
            const MenuItem(
              menuIcon: Icons.message_outlined,
              menuTitle: 'Messages',
            ),
            const MenuItem(
              menuIcon: Icons.trending_up,
              menuTitle: 'Statistics',
            ),
            const MenuItem(
              menuIcon: Icons.settings_outlined,
              menuTitle: 'Settings',
            ),
            const MenuItem(
              menuIcon: Icons.ad_units_outlined,
              menuTitle: 'Post an Ad',
            ),
            const Spacer(),
            const Divider(height: 0),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.colorPrimary,
                    minRadius: 25,
                    maxRadius: 25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Manish Paul'),
                      Text('Super Admin'),
                    ],
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.logout_outlined),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        width: deviceWidth * 0.85,
        decoration: const BoxDecoration(color: Colors.white),
      ),
    ],
  );
}
