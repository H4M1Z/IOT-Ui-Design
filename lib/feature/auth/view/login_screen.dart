import 'package:flutter/material.dart';
import 'package:flutter_ui_design_umair/feature/auth/view/widgets/login_screen_widgets/login_screen_widgets.dart';

import 'widgets/lottie_robot._widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LottieRobot(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
