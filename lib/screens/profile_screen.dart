import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Widget _intiUserValue({String user, String vaue}) => Container(
        child: Row(
          children: [
            Text(
              '$user :',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: Sizes.textStyleSize['lg'],
              ),
            ),
            SizedBox(
              width: Sizes.sizeBoxWidth['fv'],
            ),
            Text(
              vaue,
              style: TextStyle(
                color: Colors.black,
                fontSize: Sizes.textStyleSize['lg'],
              ),
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        leading: Center(
          child: Text(
            'Cancel',
            style: TextStyle(
              fontSize: Sizes.textStyleSize['lg'],
            ),
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'Save',
                style: TextStyle(
                  fontSize: Sizes.textStyleSize['lg'],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 90,
                  ),
                  Text(
                    'Update profile picture',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: Sizes.textStyleSize['default'],
                        color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: Sizes.sizeBoxHeight['xll'],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1.2,
                  ),
                ],
              ),
            ),
            ListView.separated(
              itemBuilder: (context, index) => _intiUserValue(
                user: 'First Name',
                vaue: 'Sabir',
              ),
              separatorBuilder: (context,index)=>Divider(
                color: Colors.grey,
              ),
              itemCount: null,
            ),
          ],
        ),
      ),
    );
  }
}
