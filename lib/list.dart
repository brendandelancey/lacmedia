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
                    .child(politicalAffiliation),
                itemBuilder: (context, DataSnapshot snapshot,
                    Animation<double> animation, int x) {
                  return ListTile(
                    title: Text(snapshot.key.toString()),
                    onTap: () {

                      if (politicalAffiliation == 'Conservative') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FifthScreen(snapshot.value.toString()),
                        ),
                      );
                      } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FourthScreen(snapshot.value.toString()),
                        ),
                      );
                  };}
                  );
                }),
          ),
        ],
      ),
    );
  }
}
//class Screen extends StatelessWidget{
//  String politicalparty;
//  Screen(this.politicalparty);
//
//}
//  Widget build(BuildContext context) {
//    // backing data
//    final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
//      'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
//      'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
//      'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
//      'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
//      'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
//      'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
//      'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
//      'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];
//    String screen='a';
//    if(politicalAffiliation=='Conservative'){
//      screen='/fifth';
//      }
//    else{screen='/fourth';}
//    return
//      ListView.builder(
//      itemCount: europeanCountries.length,
//
//      itemBuilder: (context, index) {
//        return ListTile(
//          title: Text(europeanCountries[index]),
//          onTap: () => Navigator.pushNamed(context, screen),
//        );
//      },
//    );
//  }
//}
