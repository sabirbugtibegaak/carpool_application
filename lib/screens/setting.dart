import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/config/constants.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:carpool_application/screens/change_laguage.dart';
import 'package:carpool_application/screens/delete_account.dart';
import 'package:flutter/material.dart';

import 'change_password.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget _buildSingleButton({
    String buttonText,
    Function onTap,
  }) {
    return ListTile(
      onTap: onTap,
      title: Text(
        buttonText,
        style: TextStyle(
          fontSize: Sizes.textStyleSize["lg"],
          color: Colors.black,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          appHeading: "Settings",
        ),
      ),
      body: Column(
        children: [
          _buildSingleButton(
            buttonText: "Change Password",
            onTap: () => Constants.routePush(
              context,
              ChangePassword(),
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
          _buildSingleButton(
            buttonText: "Change Language",
            onTap: () => Constants.routePush(
              context,
              ChangeLanguage(),
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
          _buildSingleButton(
            buttonText: "Delete Account",
            onTap: () => Constants.routePush(
              context,
              DeleteAccount(),
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
