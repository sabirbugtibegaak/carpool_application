import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  Widget _item({String title}) => Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: Sizes.sizeBoxWidth['sm'],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Sizes.textStyleSize['default'],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.sizeBoxHeight['lg'],
                  ),
                  Text(
                    'Friday 11 December 2020',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: Sizes.textStyleSize['default'],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.5,
        centerTitle: true,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          _item(
            title: 'It seems that your profile is not complete yet.',
          ),
          Divider(
            color: Colors.grey,
          ),
          _item(
            title: 'Your account has beem valideted yet',
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
