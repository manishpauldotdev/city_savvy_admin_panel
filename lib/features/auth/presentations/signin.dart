import 'package:city_savvy_admin_panel/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => desktopView(),
    );
  }

  Widget desktopView() {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    // final deviceHeight = MediaQuery.sizeOf(context).height;
    return Container(
      // width: 1.sw,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: deviceWidth * 0.49,
            decoration: BoxDecoration(
              color: Colors.purple[400],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'City Savvy',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'Know your city',
                    style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.,
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
              // color: Colors.lightBlue,
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
                      color: Colors.purple[400],
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.purple[400],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                          onPressed: () {},
                          child: const Text('Login'),
                        ),
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
}
