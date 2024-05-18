import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String menuTitle;
  final IconData menuIcon;
  final Function() changeView;
  final bool isSelected;
  final bool hasChildren;
  final bool areChildrenVisible;
  final VoidCallback? toggleChildrenVisibility;
  final List<MenuItem> children;

  const MenuItem({
    super.key,
    required this.menuTitle,
    required this.menuIcon,
    required this.changeView,
    required this.isSelected,
    this.hasChildren = false,
    this.areChildrenVisible = false,
    this.toggleChildrenVisibility,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    // final deviceHeight = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        MenuBtn(
          changeView: changeView,
          isSelected: isSelected,
          menuIcon: menuIcon,
          menuTitle: menuTitle,
          hasChildren: hasChildren,
          areChildrenVisible: areChildrenVisible,
          toggleMenuChildrenVisibility: toggleChildrenVisibility,
        ),
        if (areChildrenVisible)
          for (var btn in children) ...[
            MenuBtn(
              changeView: btn.changeView,
              isSelected: btn.isSelected,
              menuIcon: btn.menuIcon,
              menuTitle: btn.menuTitle,
              hasChildren: btn.hasChildren,
              areChildrenVisible: btn.areChildrenVisible,
            ),
          ]
      ],
    );
  }
}

class MenuBtn extends StatelessWidget {
  const MenuBtn({
    super.key,
    required this.changeView,
    required this.isSelected,
    required this.menuIcon,
    required this.menuTitle,
    required this.hasChildren,
    required this.areChildrenVisible,
    this.toggleMenuChildrenVisibility,
  });

  final Function() changeView;
  final bool isSelected;
  final IconData menuIcon;
  final String menuTitle;
  final bool hasChildren;
  final bool areChildrenVisible;
  final VoidCallback? toggleMenuChildrenVisibility;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: () {
        changeView();
        toggleMenuChildrenVisibility?.call();
      },
      child: Container(
        // width: deviceWidth * 0.14,
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
              width: deviceWidth * 0.1,
              child: Text(
                menuTitle,
                style: TextStyle(
                  fontSize: 20,
                  color: isSelected ? Colors.white : Colors.teal,
                ),
              ),
            ),

            hasChildren
                ? SizedBox(
                    width: deviceWidth * 0.03,
                    child: IconButton(
                      onPressed: () {
                        changeView();
                        toggleMenuChildrenVisibility?.call();
                      },
                      icon: areChildrenVisible
                          ? Icon(
                              Icons.arrow_drop_down_outlined,
                              color: isSelected ? Colors.white : Colors.teal,
                            )
                          : Icon(
                              Icons.arrow_right_outlined,
                              color: isSelected ? Colors.white : Colors.teal,
                            ),
                    ),
                  )
                : Visibility(
                    visible: false,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
