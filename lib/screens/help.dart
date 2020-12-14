import 'package:carpool_application/components/custom_appbar.dart';
import 'package:carpool_application/config/sizes.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  Widget _buildSingleHelpDetail(
      {context, String headingTitle, String helpTitle}) {
    return Row(
      children: [
        Text(
          headingTitle,
          style: TextStyle(
            fontSize: Sizes.textStyleSize["xs"],
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: Sizes.sizeBoxHeight["xs"],
        ),
        Text(
          helpTitle,
          style: TextStyle(
            fontSize: Sizes.textStyleSize["xs"],
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(
          appHeading: "Help",
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Support for the Carpool with ComOn application is offered by Taxistop vzw,if you have question or problems,you cam contact on buisness days between 9h00 and 18h00',
              style: TextStyle(
                fontSize: Sizes.textStyleSize["xs"],
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: Sizes.sizeBoxHeight["default"],
            ),
            _buildSingleHelpDetail(
              context: context,
              headingTitle: "Telephone",
              helpTitle: "+32 70 22 22 92",
            ),
            SizedBox(
              height: Sizes.sizeBoxHeight["default"],
            ),
            _buildSingleHelpDetail(
              context: context,
              headingTitle: "Email",
              helpTitle: "carpool@taxistop.be",
            ),
            SizedBox(
              height: Sizes.sizeBoxHeight["default"],
            ),
            _buildSingleHelpDetail(
              context: context,
              headingTitle: "Version",
              helpTitle: "2.0.13(148)",
            ),
          ],
        ),
      ),
    );
  }
}
