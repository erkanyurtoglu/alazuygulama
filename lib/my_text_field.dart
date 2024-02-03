import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labeltext;
  final controller;
  final bool isPassword;
  final bool obscureText;
  final Widget? prefixIcon;
  const MyTextField({
    super.key,
    required this.labeltext,
   this.controller,
    this.isPassword = false,
    this.obscureText = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          border:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          labelText: labeltext,
          labelStyle: TextStyle(
            color: Colors.white,
          )),
);
}
}
