import 'package:flutter/material.dart';

import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import 'package:city_savvy_admin_panel/shared/widgets/shared_widgets.dart';

Widget desktopView(BuildContext context) {
  final deviceWidth = MediaQuery.sizeOf(context).width;
  final deviceHeight = MediaQuery.sizeOf(context).height;
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: deviceWidth * 0.49,
          decoration: BoxDecoration(
            color: AppColors.colorPrimary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  width: deviceWidth * 0.45,
                  height: deviceHeight * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/kolkata_bg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  indent: 180,
                  endIndent: 180,
                ),
                const Text(
                  'City Savvy',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const Text(
                  'know your city',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: deviceWidth * 0.49,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.5),
              top: BorderSide(width: 1.5),
              right: BorderSide(width: 1.5),
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.colorPrimary,
                  ),
                ),
                const SizedBox(height: 20),
                const Form(
                  child: Column(
                    children: [
                      AppTextField(
                        hintText: 'Enter email or phone',
                        isPassword: false,
                      ),
                      SizedBox(height: 10),
                      AppTextField(
                        hintText: 'Enter password',
                        isPassword: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: deviceWidth * 0.30,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text('Forgot Password?'),
                      ),
                      const Spacer(),
                      const AppButton(btnText: 'Login'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
