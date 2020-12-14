import 'package:flutter/material.dart';

class CustomTextFleid extends StatelessWidget {
  final String textHeading;
  CustomTextFleid({this.textHeading});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: textHeading,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
