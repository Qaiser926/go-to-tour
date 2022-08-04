
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_tour/constants/custom_colors.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    Key? key,
    this.validator,
    required this.controller,
    this.onTap,
  }) : super(key: key);

  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      cursorColor: CustomColors.primary,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Pan Pacific Hotel',
        filled: true,
        fillColor: CustomColors.white,
        suffixIcon: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(6),
            child: SvgPicture.asset(
              'assets/images/Search.svg',
              color: CustomColors.white,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: CustomColors.white),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomColors.white),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: CustomColors.primary),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}