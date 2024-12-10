import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      cursorColor: const Color(0xff63FFDA),
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintMaxLines: maxLines,
        hintStyle: const TextStyle(
          color: Color(0xff63FFDA),
        ),
        errorBorder: borderStyle(color: Colors.red),
        focusedErrorBorder: borderStyle(color: Colors.red),
        enabledBorder: borderStyle(),
        focusedBorder: borderStyle(color: const Color(0xff63FFDA)),
      ),
    );
  }

  OutlineInputBorder borderStyle({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
