import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinttext,
    this.maxlines = 1,
    this.onSaved,
    this.onChanged,
  });
  final String hinttext;
  final int maxlines;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return " Field is required ";
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.black),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(Colors.black)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
