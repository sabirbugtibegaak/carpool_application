import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/components/custom_button.dart';
import 'package:carpool_application/components/custom_textfleid.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class PhoneVerifacation extends StatelessWidget {

  Widget _resend() => Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          right: 15,
        ),
        alignment: Alignment.centerRight,
        child: Text(
          'Resend Code',
          style: TextStyle(
            color: Colors.green,
            decoration: TextDecoration.underline,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        appHeading: "Phone Verification",
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'We sent a verification code to your email address.if you can\t find the email, check your Junk/Spam folder.',
              style: TextStyle(
                fontSize: Sizes.textStyleSize["lg"],
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Sizes.sizeBoxHeight['lg'],
            ),
            CustomTextFleid(
              textHeading: "Verification Code",
            ),
            SizedBox(
              height: Sizes.sizeBoxHeight['xll'],
            ),
            _resend(),
            SizedBox(
              height: Sizes.sizeBoxHeight["xll"],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    buttonText: "Later",
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: Sizes.sizeBoxWidth['xll'],
                ),
                Expanded(
                  child: CustomButton(
                    buttonText: "Confirm",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
