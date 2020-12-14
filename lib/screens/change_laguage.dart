import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/components/custom_button.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class ChangeLanguage extends StatefulWidget {
  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  Widget _buildSingleLanguageButton({String buttonText, IconData buttonIcon}) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.of(context).pop();
        },
        title: Text(
          buttonText,
          style: TextStyle(
            fontSize: Sizes.textStyleSize["lg"],
            color: Colors.black,
          ),
        ),
        trailing: Icon(
          buttonIcon,
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        appHeading: "Change Language",
        context: context,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                _buildSingleLanguageButton(
                  buttonIcon: Icons.check_box_outlined,
                  buttonText: "Français",
                ),
                Divider(
                  thickness: 1.0,
                ),
                _buildSingleLanguageButton(
                  buttonIcon: Icons.check_box,
                  buttonText: "English",
                ),
                Divider(
                  thickness: 1.0,
                ),
              ],
            ),
          ),
          CustomButton(
            buttonText: "Confirm",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
