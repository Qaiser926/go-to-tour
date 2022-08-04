import 'package:flutter/material.dart';
import 'package:go_tour/constants/custom_colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: CustomColors.primary,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black38),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomColors.strokeGrayTwo),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: CustomColors.strokeGrayTwo),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomColors.strokeGrayTwo),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
