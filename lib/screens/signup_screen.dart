import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/components/custom_button.dart';
import 'package:carpool_application/components/custom_textfleid.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  Widget _policy() => Container(
        height: 62,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Checkbox(
              activeColor: Colors.green,
              value: true,
              onChanged: null,
            ),
            Text(
              'Accept Newsletters',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(appHeading: 'Sign up', context: context),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomTextFleid(textHeading: 'First Name'),
            CustomTextFleid(textHeading: 'Last Name'),
            CustomTextFleid(textHeading: 'Emil'),
            CustomTextFleid(
              textHeading: 'CellPhone',
            ),
            CustomTextFleid(
              textHeading: 'Password',
            ),
            CustomTextFleid(
              textHeading: 'Confirm Password',
            ),
            _policy(),
            _policy(),
            CustomButton(
              buttonText: 'Sign up',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
