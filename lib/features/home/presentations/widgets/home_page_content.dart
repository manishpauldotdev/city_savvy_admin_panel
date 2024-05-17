import 'package:city_savvy_admin_panel/features/home/presentations/widgets/menu_item.dart';
import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  int index = 0;

  void changeViewContent(int updatedViewIndex) {
    setState(() {
      index = updatedViewIndex;
    });
  }

  Widget dashboardView() => const Text('Dashboard');
  Widget messageView() => const Text('Message');
  Widget statisticsView() => const Text('Statistics');
  Widget settingsView() => const Text('Settings');
  Widget postAdView() => const Text('Post Ad');

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;

    Widget renderedView = dashboardView();

    switch (index) {
      case 0:
        renderedView = dashboardView();
      case 1:
        renderedView = messageView();
      case 2:
        renderedView = statisticsView();
      case 3:
        renderedView = settingsView();
      case 4:
        renderedView = postAdView();
      default:
    }

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
              const Divider(),
              MenuItem(
                menuIcon: Icons.space_dashboard_outlined,
                menuTitle: 'Dashboard',
                changeView: () => changeViewContent(0),
              ),
              MenuItem(
                menuIcon: Icons.message_outlined,
                menuTitle: 'Messages',
                changeView: () => changeViewContent(1),
              ),
              MenuItem(
                menuIcon: Icons.trending_up,
                menuTitle: 'Statistics',
                changeView: () => changeViewContent(2),
              ),
              MenuItem(
                menuIcon: Icons.settings_outlined,
                menuTitle: 'Settings',
                changeView: () => changeViewContent(3),
              ),
              MenuItem(
                menuIcon: Icons.ad_units_outlined,
                menuTitle: 'Post an Ad',
                changeView: () => changeViewContent(4),
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
          child: Center(
            child: renderedView,
          ),
        ),
      ],
    );
  }
}
