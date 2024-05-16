import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String menuTitle;
  final IconData menuIcon;

  const MenuItem({
    super.key,
    required this.menuTitle,
    required this.menuIcon,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    // final deviceHeight = MediaQuery.sizeOf(context).height;
    return InkWell(
      onTap: () {},
      child: Container(
        width: deviceWidth * 0.14,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: deviceWidth * 0.03,
              child: Icon(
                menuIcon,
                color: Colors.teal,
                // size: 18,
              ),
            ),
            // const SizedBox(width: 5),
            SizedBox(
              width: deviceWidth * 0.08,
              child: Text(
                menuTitle,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
