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
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.white),
          ),
          labelText: labeltext,
          labelStyle: TextStyle(color: Colors.grey[800], fontSize: 15)),
    );
  }
}
