import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final String appHeading;
  CustomAppBar({this.appHeading});
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xfff3f0f0),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () => Navigator.of(context).pop()),
      centerTitle: true,
      title: Text(
        widget.appHeading,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
