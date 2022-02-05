import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacmedia/text.dart';
import 'package:lacmedia/list.dart';
import 'package:lacmedia/buttons.dart';

class LiberalListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Liberal News of The Day",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black87,
        ),
        body: List("Liberal"));
  }
}
