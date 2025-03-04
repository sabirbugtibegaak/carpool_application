import 'package:carpool_application/components/custom_button.dart';
import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/components/custom_textfleid.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class DeleteAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        appHeading: "Delete Account",
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFleid(
              textHeading: "Password",
            ),
            SizedBox(
              height: Sizes.sizeBoxHeight["lg"],
            ),
            CustomButton(
              buttonText: "Confirm",
            ),
          ],
        ),
      ),
    );
  }
}
