import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String menuTitle;
  final IconData menuIcon;
  final Function() changeView;
  final bool isSelected;

  const MenuItem({
    super.key,
    required this.menuTitle,
    required this.menuIcon,
    required this.changeView,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    // final deviceHeight = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: changeView,
      child: Container(
        width: deviceWidth * 0.14,
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(10),
        decoration: isSelected
            ? BoxDecoration(
                color: AppColors.colorPrimary,
                borderRadius: BorderRadius.circular(5),
              )
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: deviceWidth * 0.03,
              child: Icon(
                menuIcon,
                color: isSelected ? Colors.white : Colors.teal,
                // size: 18,
              ),
            ),
            // const SizedBox(width: 5),
            SizedBox(
              width: deviceWidth * 0.08,
              child: Text(
                menuTitle,
                style: TextStyle(
                  fontSize: 20,
                  color: isSelected ? Colors.white : Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
