import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _value = false;
  bool _smokeValue = false;
 bool _musicInCarValue = false;

  Widget _intiUserValue({String user, String vaue}) => Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
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
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ],
        ),
      );
  Widget _customField({String hintText}) => TextField(
        decoration: InputDecoration(
          hintText: "$hintText:",
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cancel',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: Sizes.textStyleSize['lg'],
              ),
            ),
            Text(
              'Profile',
              style: TextStyle(
                fontSize: Sizes.textStyleSize['lg'],
              ),
            ),
            Text(
              'Save',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: Sizes.textStyleSize['lg'],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
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
            _intiUserValue(
              user: 'First name',
              vaue: 'Jhon',
            ),
            _intiUserValue(
              user: 'Last name',
              vaue: 'Sena',
            ),
            _intiUserValue(
              user: 'Birthday',
              vaue: '11-Aug-2000',
            ),
            _intiUserValue(
              user: 'Gender',
              vaue: 'Male',
            ),
            _intiUserValue(
              user: 'Email',
              vaue: 'JhonSena@gmail.com',
            ),
            _intiUserValue(
              user: 'Residence',
              vaue: '',
            ),
            _intiUserValue(
              user: 'verify profile',
              vaue: '',
            ),
            //// fb yeah pe lagega...
            _intiUserValue(
              user: 'More information about yourself',
              vaue: '',
            ),
            ///// yeah pr textfield honga..
            ///jo k.... pora detail Lega
            /// user apna....
            _intiUserValue(
              user: 'Car & rider details',
              vaue: '',
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Do you have a car?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: Sizes.textStyleSize['default'],
                            color: Colors.black),
                      ),
                      Switch(
                        value: _value,
                        onChanged: (bool value) {
                          setState(
                            () {
                              _value = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  _value
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _customField(hintText: 'Brands'),
                            _customField(hintText: 'Colors'),
                            _customField(hintText: 'License Plate'),
                          ],
                        )
                      : Container(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Do you have a car?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: Sizes.textStyleSize['default'],
                            color: Colors.black),
                      ),
                      Switch(
                        value: _smokeValue,
                        onChanged: (bool value) {
                          setState(
                            () {
                              _smokeValue = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Do you listen to music in the car?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: Sizes.textStyleSize['default'],
                            color: Colors.black),
                      ),
                      Switch(
                        value: _musicInCarValue,
                        onChanged: (bool value) {
                          setState(
                            () {
                              _musicInCarValue = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
