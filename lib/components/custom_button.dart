import 'package:carpool_application/config/constants.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  CustomButton({
    this.buttonText,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.sizeBoxHeight["xs"],
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: Constants.gradient,
      ),
      child: RaisedButton(
        color: Colors.transparent,
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: Sizes.textStyleSize["xs"],
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
