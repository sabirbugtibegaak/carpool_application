import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/components/custom_button.dart';
import 'package:carpool_application/components/custom_textfleid.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        appHeading: "Forgot",
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFleid(
              textHeading: 'Email',
            ),
            SizedBox(height: Sizes.sizeBoxHeight['default']),
            CustomButton(
              buttonText: 'Confirm',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
