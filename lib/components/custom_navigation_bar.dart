
import 'package:carpool_application/screens/carpool_partner.dart';
import 'package:carpool_application/screens/my_ride.dart';
import 'package:carpool_application/screens/offer_a_ride.dart';
import 'package:carpool_application/screens/profile.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/notifications.dart';

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;
  final _myRideScreen = GlobalKey<NavigatorState>();
  final _offerARideScreen = GlobalKey<NavigatorState>();
  final _notificationsScreen = GlobalKey<NavigatorState>();
  final _profileScreen = GlobalKey<NavigatorState>();
  final _findARideScreen = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Navigator(
            key: _findARideScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => CarpoolPartner(),
            ),
          ),
          Navigator(
            key: _myRideScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => MyRide(),
            ),
          ),
          Navigator(
            key: _offerARideScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => OfferARide(),
            ),
          ),
          Navigator(
            key: _notificationsScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => Notifications(),
            ),
          ),
          Navigator(
            key: _profileScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => Profile(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: Colors.white,
          selectedItemIconColor: Theme.of(context).primaryColor,
          selectedItemLabelColor: Theme.of(context).primaryColor,
        ),
        selectedIndex: _currentIndex,
        onSelectTab: (val) => _onTap(val, context),
        items: [
          FFNavigationBarItem(
            iconData: Icons.search,
            label: "Find rides",
          ),
          FFNavigationBarItem(
            iconData: Icons.emoji_transportation,
            label: 'Ride',
          ),
          FFNavigationBarItem(
            iconData: Icons.add_circle_outline,
            label: 'Offer a ride',
          ),
          FFNavigationBarItem(
            iconData: Icons.notifications_none_outlined,
            label: 'Notifications',
          ),
          FFNavigationBarItem(
            iconData: Icons.more_horiz,
            label: 'More',
          ),
        ],
      ),
    );
  }

  void _onTap(int val, BuildContext context) {
    if (_currentIndex == val) {
      switch (val) {
        case 0:
          _findARideScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 1:
          _myRideScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 2:
          _offerARideScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 3:
          _notificationsScreen.currentState.popUntil((route) => route.isFirst);
          break;
        case 4:
          _profileScreen.currentState.popUntil((route) => route.isFirst);
          break;
        default:
      }
    } else {
      if (mounted) {
        setState(() {
          _currentIndex = val;
        });
      }
    }
  }
}
