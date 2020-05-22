import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class List extends StatelessWidget {
  @override
  String politicalAffiliation;
  List(this.politicalAffiliation);

  Widget build(BuildContext context) {
    // backing data
    final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
      'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
      'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
      'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
      'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
      'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
      'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
      'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
      'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];
    String screen='a';
    if(politicalAffiliation=='Conservative'){
      screen='/fifth';
      }
    else{screen='/fourth';}
    return
      ListView.builder(
      itemCount: europeanCountries.length,

      itemBuilder: (context, index) {
        return ListTile(
          title: Text(europeanCountries[index]),
          onTap: () => Navigator.pushNamed(context, screen),
        );
      },
    );
  }
}


