import 'package:flutter/material.dart';

class SignInProviderButtons extends StatelessWidget {
  const SignInProviderButtons({
    super.key,
    required this.iconPath,
    required this.providerName,
  });
  final String iconPath;
  final String providerName;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final (width, height) = (constraints.maxWidth, constraints.maxHeight);
        return Container(
          width: constraints.maxWidth * 0.5,
          height: constraints.maxHeight * 0.6,
          // padding: EdgeInsets.only(
          //   right: constraints.maxWidth * 0.05,
          // ),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey.shade700),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  width: width * 0.5,
                  height: height * 0.3,
                  iconPath,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  'Sign in with $providerName',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class LoginSignupButton extends StatelessWidget {
  const LoginSignupButton(
      {super.key,
      required this.text,
      required this.height,
      required this.width,
      this.value = 0.03});
  final String text;
  final double height, width, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * value),
      child: GestureDetector(
        onTap: () => '',
        child: Container(
          width: width * 0.7,
          height: height * 0.06,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: height * 0.02,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
