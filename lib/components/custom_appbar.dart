import 'package:flutter/material.dart';

appBar({BuildContext context, String appHeading}) => AppBar(
      backgroundColor: Color(0xfff3f0f0),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () => Navigator.of(context).pop()),
      centerTitle: true,
      title: Text(
        appHeading,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
