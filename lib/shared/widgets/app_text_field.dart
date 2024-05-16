import 'package:city_savvy_admin_panel/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final bool isPassword;
  final String hintText;

  const AppTextField({
    super.key,
    required this.isPassword,
    required this.hintText,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      width: deviceWidth * 0.30,
      child: TextFormField(
        obscureText: widget.isPassword && !isPasswordVisible,
        style: const TextStyle(
          color: Colors.black,
        ),
        cursorColor: AppColors.colorPrimary,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.black54,
          ),
          contentPadding: const EdgeInsets.only(left: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.pink,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 2,
              color: AppColors.colorPrimary!,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: togglePasswordVisibility,
                  icon: isPasswordVisible
                      ? const Icon(Icons.visibility_outlined)
                      : const Icon(Icons.visibility_off_outlined),
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
