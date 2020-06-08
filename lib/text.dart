import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';


class Texts extends StatelessWidget {
  @override
  String articleBody;
  Texts(this.articleBody);
  Widget build(BuildContext context) {
    //double c_width = MediaQuery.of(context).size.width*0.8;
    return Column(
      children: <Widget>[
    Container(
    child: Image(
        image: NetworkImage('https://i1.wp.com/www.luxuriousmagazine.com/wp-content/uploads/2013/10/Hasselblad-H4D-40-9a.jpg?resize=630%2C424&ssl=1'),
    ),),
        Container(

            child: Text(
            articleBody,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),)
      ],
    );


  }
}
//https://i.pinimg.com/originals/44/bb/06/44bb06a2cc86fcd3dc1105fbaa512775.jpg