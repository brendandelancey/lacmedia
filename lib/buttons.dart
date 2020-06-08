import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Buttons extends StatelessWidget {
  final DatabaseReference database = FirebaseDatabase.instance.reference().child("test");

  sendData(){
    database.push().set({'name':'Peter','lastName':'Ross'
    });
    conservativeArticles(){
//      final Query player = FirebaseDatabase.instance.reference().child("Conservative").orderByChild("positionInList").limitToFirst(1);
//      player

    }
  }
  @override
  Widget build(BuildContext context) {
    return Table(columnWidths: {
      1: FractionColumnWidth(0.5)
    }, children: [
      TableRow(children: <Widget>[
        Container(
//                width: ,
          height: MediaQuery.of(context).size.height ,
          child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              }, child: Text('Liberal'), color: Colors.red),
        ),
        Container(
//          width: 1,
          height: MediaQuery.of(context).size.height ,
          child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
                sendData();
              },
              child: Text('Conservative'),
              color: Colors.blue),
        ),
      ]),
    ]);
  }
}
