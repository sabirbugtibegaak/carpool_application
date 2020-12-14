import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/components/custom_button.dart';
import 'package:carpool_application/components/custom_textfleid.dart';
import 'package:carpool_application/config/constants.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

import 'forgot_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  Widget _forgetHaveAnAccount(
          {Function whenPress, String text, double fontSize}) =>
      GestureDetector(
        onTap: whenPress,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(right: 15),
          child: Text(
            text,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.green[400],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  Widget _divider() => Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.black54,
              thickness: 3,
              endIndent: 28,
              indent: 8,
            ),
          ),
          Text(
            'Or',
            style: TextStyle(
              fontSize: Sizes.textStyleSize["xs"],
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.black54,
              thickness: 3,
              endIndent: 8,
              indent: 28,
            ),
          ),
        ],
      );

  Widget _socialMediaButton({Color color, String socialLogoText, socialText}) {
    return Container(
      height: 55,
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey[50],
        shape: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
            width: 3,
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Text(
                  socialLogoText,
                  style: TextStyle(
                    fontSize: 30,
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Text(
                  "Sign in with $socialText",
                  style: TextStyle(
                    fontSize: Sizes.textStyleSize["xs"],
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        appHeading: 'Login',
        context: context,
      ),
      body: ListView(
        children: [
          Container(
            height: 730,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'To ride along with this app you must log in',
                  style: TextStyle(
                    fontSize: Sizes.textStyleSize["lg"],
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextFleid(textHeading: 'Email'),
                CustomTextFleid(textHeading: 'Password'),
                _forgetHaveAnAccount(
                  text: 'Forgot Password?',
                  fontSize: Sizes.textStyleSize["lg"],
                  whenPress: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => ForgotScreen(),
                      ),
                    );
                  },
                ),
                CustomButton(
                  buttonText: 'Login',
                  onPressed: () {},
                ),
                _forgetHaveAnAccount(
                  whenPress: () => Constants.routePushReplacement(
                    context,
                    SignupScreen(),
                  ),
                  text: 'Dont\'t have an account? Register',
                  fontSize: 16,
                ),
                SizedBox(
                  height: Sizes.sizeBoxHeight['xll'],
                ),
                _divider(),
                _socialMediaButton(
                  socialLogoText: 'F',
                  socialText: 'Facebook',
                  color: Colors.green,
                ),
                _socialMediaButton(
                  socialLogoText: 'G',
                  color: Colors.orange,
                  socialText: 'Google',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
