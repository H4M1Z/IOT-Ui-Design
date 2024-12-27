import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design_umair/core/common_widgets/buttons.dart';
import 'package:flutter_ui_design_umair/core/common_widgets/container_design.dart';

import '../../../../../core/common_widgets/text_fields.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return BackgroundContainerDesign(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginText(
              height: height,
            ),

            //...............TEXT FIELDS
            LoginTextFields(
              height: height,
              width: width,
            ),

            //...............FORGOT PASSWORD
            ForgetPasswordText(
              height: height,
              width: width,
            ),

            //...............LOGIN BUTTON
            LoginSignupButton(
              text: 'Login',
              height: height,
              width: width,
            ),

            //...............SIGNUP PAGE BUTTON TEXT
            SignupText(
              height: height,
            ),

            //..................DIVIDER
            DividerWithText(
              height: height,
            ),

            //..........PROVIDER BUTTONS
            ProviderButtons(
              height: height,
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}

class LoginText extends StatelessWidget {
  const LoginText({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.05),
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: height * 0.05,
        ),
      ),
    );
  }
}

class LoginTextFields extends StatelessWidget {
  const LoginTextFields({super.key, required this.height, required this.width});
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          padding: EdgeInsets.only(top: height * 0.1),
          labelText: 'Email',
          controller: TextEditingController(),
        ),
        CustomTextField(
          padding: EdgeInsets.only(top: height * 0.05),
          labelText: 'Password',
          controller: TextEditingController(),
          suffixIcon: Icons.visibility_off,
          isObscured: true,
        ),
      ],
    );
  }
}

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText(
      {super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.02,
        left: width * 0.5,
      ),
      child: GestureDetector(
        child: Text(
          'Forgot password?',
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: height * 0.018,
          ),
        ),
        onTap: () => '',
      ),
    );
  }
}

class SignupText extends StatelessWidget {
  const SignupText({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.03,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(color: Colors.grey.shade600),
            ),
            TextSpan(
              text: 'SignUp.',
              style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key, required this.height});

  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.025),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 2,
            child: Divider(
              color: Colors.grey.shade600,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'or',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Divider(
              color: Colors.grey.shade600,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class ProviderButtons extends StatelessWidget {
  const ProviderButtons({super.key, required this.height, required this.width});

  final double height, width;

  @override
  Widget build(BuildContext context) {
    final buttonHeight = height * 0.1;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02),
      child: Column(
        children: [
          SizedBox(
            height: buttonHeight,
            width: width,
            child: const Center(
              child: SignInProviderButtons(
                iconPath: 'assets/images/apple_icon.png',
                providerName: 'Apple',
              ),
            ),
          ),
          SizedBox(
            height: buttonHeight,
            width: width,
            child: const Center(
              child: SignInProviderButtons(
                iconPath: 'assets/images/google_icon.png',
                providerName: 'Google',
              ),
            ),
          )
        ],
      ),
    );
  }
}
