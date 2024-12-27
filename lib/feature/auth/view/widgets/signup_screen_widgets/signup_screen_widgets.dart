import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_design_umair/core/common_widgets/container_design.dart';

import '../../../../../core/common_widgets/buttons.dart';
import '../../../../../core/common_widgets/text_fields.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return BackgroundContainerDesign(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignUpText(
              height: height,
            ),

            const ProfilePicWidget(),

            //...............TEXT FIELDS
            SignUpTextFields(
              height: height,
              width: width,
            ),

            //...............LOGIN BUTTON
            LoginSignupButton(
              text: 'SignUp',
              height: height,
              width: width,
              value: 0.05,
            ),

            //...............SIGNUP PAGE BUTTON TEXT
            LoginText(
              height: height,
            ),

            SizedBox(
              height: height * 0.01,
            )
          ],
        ),
      ),
    );
  }
}

class ProfilePicWidget extends StatelessWidget {
  const ProfilePicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(top: height * 0.05),
      child: Container(
        width: height * 0.18,
        height: height * 0.18,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey.shade600,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Icon(
                Icons.person,
                color: Colors.grey,
                size: height * 0.1,
              ),
            ),
            Positioned(
              bottom: 5,
              right: 10,
              child: Icon(
                color: Colors.grey,
                Icons.add_a_photo_outlined,
                size: height * 0.03,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  const SignUpText({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.05),
      child: Text(
        'SignUp',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: height * 0.05,
        ),
      ),
    );
  }
}

class SignUpTextFields extends StatelessWidget {
  const SignUpTextFields(
      {super.key, required this.height, required this.width});
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          padding: EdgeInsets.only(top: height * 0.1),
          labelText: 'Name',
          controller: TextEditingController(),
        ),
        CustomTextField(
          padding: EdgeInsets.only(top: height * 0.05),
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

class LoginText extends StatelessWidget {
  const LoginText({super.key, required this.height});
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
              text: "Already have an account? ",
              style: TextStyle(color: Colors.grey.shade600),
            ),
            TextSpan(
              text: 'Login.',
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
