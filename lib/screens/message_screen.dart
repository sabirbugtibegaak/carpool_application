import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/components/custom_button.dart';
import 'package:carpool_application/components/custom_textfleid.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        appHeading: "My Message",
        context: context,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "You don't have any message",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Sizes.textStyleSize["xs"],
                color: Colors.grey[700],
              ),
            ),
          )
        ],
      ),
    );
  }
}
