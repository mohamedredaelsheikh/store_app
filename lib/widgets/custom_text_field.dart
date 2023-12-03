import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinttext,
    this.maxlines = 1,
    this.onSaved,
    this.onChanged,
    this.input,
  });
  final String hinttext;
  final int maxlines;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final TextInputType? input;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxlines,
      keyboardType: input,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.black),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    );
  }
}
