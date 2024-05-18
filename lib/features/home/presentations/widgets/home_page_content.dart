import 'package:flutter/material.dart';

import 'package:city_savvy_admin_panel/features/home/presentations/widgets/menu_item.dart';
import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import '../../../../shared/exports/main_pages.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  double index = 0;
  bool areChildrenVisible = false;

  void changeViewContent(double updatedViewIndex) {
    setState(() {
      index = updatedViewIndex;
    });
  }

  void toggleMenuChildrenVisibility() {
    setState(() {
      areChildrenVisible = !areChildrenVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;

    Widget renderedView = const DashboardPage();

    switch (index) {
      case 0:
        renderedView = const DashboardPage();
      case 1:
        renderedView = const MessagesPage();
      case 2:
        renderedView = const ManagementPage();
      case 2.1:
        renderedView = const UsersManagementPage();
      case 2.2:
        renderedView = const TransportManagementPage();
      case 3:
        renderedView = const StatisticsPage();
      case 4:
        renderedView = const AdPage();
      case 5:
        renderedView = const NotificationsPage();
      case 6:
        renderedView = const SettingsPage();
      default:
    }

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
              SizedBox(
                width: deviceWidth * 0.14,
                child: const Divider(),
              ),
              MenuItem(
                menuIcon: Icons.space_dashboard_outlined,
                menuTitle: 'Dashboard',
                changeView: () => changeViewContent(0),
                isSelected: index == 0,
              ),
              MenuItem(
                menuIcon: Icons.message_outlined,
                menuTitle: 'Messages',
                changeView: () => changeViewContent(1),
                isSelected: index == 1,
              ),
              MenuItem(
                menuIcon: Icons.label_important_outline,
                menuTitle: 'Management',
                changeView: () => changeViewContent(2),
                isSelected: index == 2,
                hasChildren: true,
                areChildrenVisible: areChildrenVisible,
                toggleChildrenVisibility: () => toggleMenuChildrenVisibility(),
                children: [
                  MenuItem(
                    menuIcon: Icons.manage_accounts_outlined,
                    menuTitle: 'Users',
                    changeView: () => changeViewContent(2.1),
                    isSelected: index == 2.1,
                  ),
                  MenuItem(
                    menuIcon: Icons.emoji_transportation_outlined,
                    menuTitle: 'Transport',
                    changeView: () => changeViewContent(2.2),
                    isSelected: index == 2.2,
                  ),
                ],
              ),
              MenuItem(
                menuIcon: Icons.trending_up,
                menuTitle: 'Statistics',
                changeView: () => changeViewContent(3),
                isSelected: index == 3,
              ),
              MenuItem(
                menuIcon: Icons.ad_units_outlined,
                menuTitle: 'Post an Ad',
                changeView: () => changeViewContent(4),
                isSelected: index == 4,
              ),
              const Spacer(),
              MenuItem(
                menuIcon: Icons.notifications_outlined,
                menuTitle: 'Notification',
                changeView: () => changeViewContent(5),
                isSelected: index == 5,
              ),
              MenuItem(
                menuIcon: Icons.settings_outlined,
                menuTitle: 'Settings',
                changeView: () => changeViewContent(6),
                isSelected: index == 6,
              ),
              SizedBox(
                width: deviceWidth * 0.14,
                child: const Divider(),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.colorPrimary,
                      minRadius: 24,
                      maxRadius: 24,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Manish Paul'),
                        Text(
                          'Super Admin',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
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
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Center(
              child: renderedView,
            ),
          ),
        ),
      ],
    );
  }
}
