import 'package:flutter/material.dart';
import 'package:lacmedia/Screens/dashboardScreen.dart';
import 'package:lacmedia/Screens/LiberalListScreen.dart';
import 'package:lacmedia/Screens/ConservativeListScreen.dart';

void main() => runApp(
      MaterialApp(
        title: 'LaC Media',
        theme: ThemeData(fontFamily: 'PlayfairDisplay'),

        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => DashboardScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => LiberalListScreen(),
          '/third': (context) => ConservativeListScreen(),
//          '/fourth': (context) => FourthScreen(),
//          '/fifth': (context) => FifthScreen(),
        },
      ),
    );
