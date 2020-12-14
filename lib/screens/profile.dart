import 'package:carpool_application/config/constants.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:carpool_application/screens/help.dart';
import 'package:carpool_application/screens/setting.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget _buildSingleButton(
      {String buttonText, IconData buttonIcon, Function onTap}) {
    return Container(
      color: Colors.white,
      child: ListTile(
        onTap: onTap,
        leading: Icon(buttonIcon),
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'More',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: Constants.gradient,
                ),
                //   padding: EdgeInsets.only(top: 25.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: Sizes.sizeBoxHeight["sm"],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Sign out  ",
                        style: TextStyle(
                          fontSize: Sizes.textStyleSize["lg"],
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                color: Colors.grey,
                                size: 35,
                              ),
                            ),
                            SizedBox(
                              height: Sizes.sizeBoxHeight["sm"],
                            ),
                            Text(
                              "John cena",
                              style: TextStyle(
                                fontSize: Sizes.textStyleSize["xs"],
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Settings(),),);

            Expanded(
              child: Container(
                child: Column(
                  children: [
                    _buildSingleButton(
                      buttonIcon: Icons.person,
                      buttonText: "My Profile",
                      onTap: () => Constants.routePush(
                        context,
                        Settings(),
                      ),
                    ),
                    SizedBox(
                      height: Sizes.sizeBoxHeight["sm"],
                    ),
                    _buildSingleButton(
                      buttonIcon: Icons.message_outlined,
                      buttonText: "My Messages",
                      onTap: () => Constants.routePush(
                        context,
                        Settings(),
                      ),
                    ),
                    SizedBox(
                      height: Sizes.sizeBoxHeight["sm"],
                    ),
                    _buildSingleButton(
                      buttonIcon: Icons.star_border,
                      buttonText: "Reviews",
                      onTap: () => Constants.routePush(
                        context,
                        Settings(),
                      ),
                    ),
                    SizedBox(
                      height: Sizes.sizeBoxHeight["sm"],
                    ),
                    _buildSingleButton(
                      buttonIcon: Icons.settings,
                      buttonText: "Settings",
                      onTap: () => Constants.routePush(
                        context,
                        Settings(),
                      ),
                    ),
                    SizedBox(
                      height: Sizes.sizeBoxHeight["sm"],
                    ),
                    _buildSingleButton(
                      buttonIcon: Icons.help_outline,
                      buttonText: "Help",
                      onTap: () => Constants.routePush(
                        context,
                        Help(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
