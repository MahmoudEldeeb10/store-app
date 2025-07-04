import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  final String hintText;
  final TextInputType? inputType;
  final Function(String value)? onchanged;
  CustomTextFild(
      {required this.hintText, this.inputType, required this.onchanged});
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
