import 'package:carpool_application/components/custom_appbar.dart';

import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        appHeading: "Reviews",
        context: context,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Icon(
                Icons.person,
                size: 90,
                color: Colors.grey[700],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Text(
                  "No Reviews",
                  style: TextStyle(fontSize: Sizes.textStyleSize["lg"]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
