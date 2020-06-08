import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'list.dart';
import 'text.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

void main() => runApp(

      MaterialApp(

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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("LaC Media"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Buttons(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Liberal News of The Day"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: List("Liberal"),
//        child: RaisedButton(
//          onPressed: () {
//            Navigator.pop(context);
//          },
//          child: Text('Go back!'),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Conservative News of The Day"),
          backgroundColor: Colors.blueGrey[900],
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
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Liberal News of The Day"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Texts(articleBody));
  }
}

class FifthScreen extends StatelessWidget {
  @override
  String articleBody;
  FifthScreen(this.articleBody);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Conservative News of The Day"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Texts(articleBody));
  }
}

//class GettingData extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(title: new Text("Firebase Example"),),
//      body: new Column(
//        children: <Widget>[
//          new Flexible(
//            child: new FirebaseAnimatedList(
//                query: FirebaseDatabase.instance
//                    .reference().child("contacts")
//                    .orderByChild("email")
//                    .startAt("em1@gmail.com").endAt("em1@gmail.com"),
//                padding: new EdgeInsets.all(8.0),
//                reverse: false,
//                itemBuilder: (_, DataSnapshot snapshot,
//                    Animation<double> animation, int x) {
//                  return new ListTile(
//                    subtitle: new Text(snapshot.value.toString()),
//                  );
//                }
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
