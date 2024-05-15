import 'package:city_savvy_admin_panel/features/auth/presentations/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width);
    // print(MediaQuery.sizeOf(context).height);
    return const MaterialApp(
      home: Scaffold(
        body: SignInPage(),
      ),
    );
  }
}
