import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';
import 'main.dart';

class List extends StatelessWidget {
  @override
  String politicalAffiliation;
  List(this.politicalAffiliation);
  Widget build(BuildContext context) {
    String screen = 'a';
    int color=0xFFFFFFFF;
    if (politicalAffiliation == 'Conservative') {
      screen = '/fifth';
    } else {
      screen = '/fourth';
    }
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Flexible(


            child: new FirebaseAnimatedList(
                query: FirebaseDatabase.instance
                    .reference()
                    .child(politicalAffiliation).orderByValue(),

                itemBuilder: (context, DataSnapshot snapshot,
                    Animation<double> animation, int x) {

                  return Card(color: Color(color),
                    child:ListTile(


                      title: Text(snapshot.key.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
//                      selected:select,
                      onTap: () {



                        if (politicalAffiliation == 'Conservative')
                        {
                          //color=0xFFAFAFA;
//                          select=true;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FifthScreen(snapshot.value.toString()),

                            ),
                          );
                        } else
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FourthScreen(snapshot.value.toString()),
                              ),
                            );}
                        },
                  ),);
                }
                ),

          ),
        ],
      ),
    );
  }
}
