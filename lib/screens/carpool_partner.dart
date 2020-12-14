import 'package:carpool_application/config/constants.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class CarpoolPartner extends StatelessWidget {
  static TextEditingController yourLocation, destination;

  Widget _customTextField({String hintText, TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
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
          'Find a carpool partner',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
      
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(gradient: Constants.gradient),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: double.infinity,
                          child: Text(
                            'Login',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize:  Sizes.textStyleSize["lg"],
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Where will you go?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xffe6e6e6),
                ),
              ),
            ],
          ),
          Container(
        
            margin: EdgeInsets.only(top: 200, right: 25, left: 25),
            color: Color(0xffe6e6e6),
      
            child: Column(
              children: [
                _customTextField(
                  controller: yourLocation,
                  hintText: 'Your location',
                ),
                _customTextField(
                  controller: destination,
                  hintText: 'Destination',
                ),
                _customTextField(
                  controller: destination,
                  hintText: 'Destination',
                ),
                Container(
                  height: Sizes.sizeBoxHeight["xs"],
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(gradient: Constants.gradient),
                  child: RaisedButton.icon(
                    color: Colors.transparent,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    label: Text(
                      'Find a ride',
                      style: TextStyle(
                        fontSize: Sizes.textStyleSize["lg"],
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
