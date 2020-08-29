import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'list.dart';
import 'text.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_database/ui/firebase_animated_list.dart';

void main() => runApp(

      MaterialApp(
        title: 'LaC Media',
        theme: ThemeData(fontFamily: 'PlayfairDisplay'),

        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => FirstScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => SecondScreen(),
          '/third': (context) => ThirdScreen(),
//          '/fourth': (context) => FourthScreen(),
//          '/fifth': (context) => FifthScreen(),
        },
      ),
    );

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("LaC Media",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Buttons(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Liberal News of The Day",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black87,
      ),
      body: List("Liberal"));
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Conservative News of The Day",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black87,
        ),
        body: List("Conservative"));
  }
}

class FourthScreen extends StatelessWidget {
  @override
  String articleBody;
  FourthScreen(this.articleBody);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Liberal News of The Day",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black87,
        ),
        body: Texts(articleBody.substring(articleBody.indexOf(' ')+1)));
  }
}

class FifthScreen extends StatelessWidget {
  @override
  String articleBody;
  FifthScreen(this.articleBody);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Conservative News of The Day",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold) ),
          backgroundColor: Colors.black87,
        ),
        body: Texts(articleBody.substring(articleBody.indexOf(' ')+1)));
  }
}

