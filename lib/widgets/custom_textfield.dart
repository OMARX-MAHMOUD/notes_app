import 'package:flutter/material.dart';
import 'package:notes_app/constans/constans.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: KprimaryColor),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(KprimaryColor)),
    );
  }

  // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
