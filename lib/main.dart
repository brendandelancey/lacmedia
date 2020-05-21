import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("LaC Media"),
            backgroundColor: Colors.blueGrey[900],
          ),
          body:Buttons(),
        ),
      ),
    );
