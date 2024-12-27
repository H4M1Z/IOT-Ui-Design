import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.padding = const EdgeInsets.all(0.0),
    required this.labelText,
    required this.controller,
    this.suffixIcon,
    this.isObscured = false,
  });
  final EdgeInsetsGeometry padding;
  final String labelText;
  final TextEditingController controller;
  final IconData? suffixIcon;
  final bool isObscured;
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.grey.shade700,
        ));
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Padding(
          padding: padding,
          child: SizedBox(
            width: width * 0.8,
            child: TextFormField(
              obscureText: isObscured,
              cursorColor: Colors.grey.shade700,
              controller: controller,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.sizeOf(context).height * 0.02,
              ),
              decoration: InputDecoration(
                suffixIcon:
                    IconButton(onPressed: () => '', icon: Icon(suffixIcon)),
                fillColor: Colors.grey.shade900,
                filled: true,
                labelText: labelText,
                labelStyle: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.02,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                ),
                border: border,
                enabledBorder: border,
                focusedBorder: border,
              ),
            ),
          ),
        );
      },
    );
  }
}
