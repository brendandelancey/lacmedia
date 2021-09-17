import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Buttons extends StatelessWidget {
  final DatabaseReference database = FirebaseDatabase.instance.reference().child("test");

//  sendData(){
////    database.push().set({'name':'Peter','lastName':'Ross'
////    });
////    conservativeArticles(){
//////      final Query player = FirebaseDatabase.instance.reference().child("Conservative").orderByChild("positionInList").limitToFirst(1);
//////      player
////
////    }
//  }
  @override
  Widget build(BuildContext context) {
    return Table(columnWidths: {
      1: FractionColumnWidth(0.5)
    }, children: [
      TableRow(children: <Widget>[
        Container(
//                width: ,
          height: MediaQuery.of(context).size.height ,

          child: Padding( padding:EdgeInsets.only( bottom: 100.0),
          child:ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              //              check for relative sizing for larger phones and the logos being positioned poorly
              // padding: EdgeInsets.only( bottom: 100.0),

              // child: Text('Liberal', , style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic,  ), ),
              // color: Color(0xFFD50000)),
              child: Text('Liberal', textAlign: TextAlign.right,style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic  ),),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFD50000),
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),

    )),

          )),
        Container(
          height: MediaQuery.of(context).size.height ,

          child: Padding( padding:EdgeInsets.only( bottom: 100.0),
              child:ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
                //sendData();
              },
//              check for relative sizing for larger phones and the logos being positioned poorly

              child: Text('Conservative', style: TextStyle(color: Colors.white,fontSize: 28,fontWeight:FontWeight.bold,fontStyle:FontStyle.italic  ),),
              style: ElevatedButton.styleFrom(
                // shape: BorderRadius.all(0),
                  primary: Color(0xFF01579B),
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),

              )),
        )),
      ]),
    ]);
  }
}
