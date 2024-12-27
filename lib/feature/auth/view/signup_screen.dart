import 'package:flutter/material.dart';
import 'package:flutter_ui_design_umair/feature/auth/view/widgets/lottie_robot._widget.dart';
import 'package:flutter_ui_design_umair/feature/auth/view/widgets/signup_screen_widgets/signup_screen_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LottieRobot(),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
