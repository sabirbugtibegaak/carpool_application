import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  static LinearGradient gradient = LinearGradient(
    colors: [
      Color(0xff62d3a9),
      Color(0xff8bda9f),
    ],
  );
  static routePush(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => widget,
      ),
    );
  }
  static routePushReplacement(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => widget,
      ),
    );
  }
}
