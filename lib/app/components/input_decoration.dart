import 'package:flutter/material.dart';
import 'package:go_tour/constants/custom_colors.dart';

class CommonDecoration {
  static InputDecoration inputdecoration(String hint) {
    return InputDecoration(
      isDense: true,
      hintText: hint,
      fillColor: Colors.white,
      hintStyle: const TextStyle(fontSize: 14),
      filled: true,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: CustomColors.deepGray),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: CustomColors.deepGray),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: CustomColors.gray),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: CustomColors.red),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
