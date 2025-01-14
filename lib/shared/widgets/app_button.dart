import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final Size minSize;
  final VoidCallback onBtnPressed;

  const AppButton({
    super.key,
    required this.btnText,
    this.minSize = const Size(100, 40.5),
    required this.onBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.colorPrimary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: Size.copy(minSize),
      ),
      onPressed: onBtnPressed,
      child: const Text('Login'),
    );
  }
}
