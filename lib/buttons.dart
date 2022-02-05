import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:lacmedia/Screens/ConservativeListScreen.dart';
import 'package:lacmedia/Screens/LiberalListScreen.dart';
import 'package:lacmedia/bottomPopup.dart';
import 'package:lacmedia/list.dart';
import 'package:page_transition/page_transition.dart';

class Buttons extends StatelessWidget {
  final DatabaseReference database =
      FirebaseDatabase.instance.reference().child("test");

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
    return

        // SingleChildScrollView(
        //   child:
        Stack(
      children: [
        Table(columnWidths: {
          1: FractionColumnWidth(0.5)
        }, children: [
          TableRow(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,

              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: LiberalListScreen()));
                  },
                  child: Align(
                      alignment: Alignment(0, -0.2),
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Liberal',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                // height: 20,
                                color: Colors.white,
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ))),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFD50000),
                    onPrimary: Color(0x7D0404),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                  )),

              // )
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                    //sendData();
                  },
//              check for relative sizing for larger phones and the logos being positioned poorly

                  child: Align(
                      alignment: Alignment(0, -0.2),
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Conservative',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ))),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF01579B),
                    onPrimary: Color(0x4147D),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                  )),
            ),
          ]),
        ]),
        Positioned(
          right: 100.0,
          bottom: 0.0,
          child: Align(
            alignment: Alignment(100, 0),
            child: Container(
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/third');
                    BottomPopup()
                        .showBottomSheetModal(context, Widgetlist(), 0.75);
                    //sendData();
                  },
                  //              check for relative sizing for larger phones and the logos being positioned poorly

                  child: Align(
                      alignment: Alignment(100, 0),
                      child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Opinion Articles',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ))),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                    onPrimary: Color(0x4147D),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15.0),
                    )),
                  )),
            ),
          ),
        )
      ],
      // ),
    );
  }
}
