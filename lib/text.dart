import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Texts extends StatelessWidget {
  @override
  String articleBody;
  String imageURL;
  String creditURL;
  Texts(this.articleBody, this.imageURL, this.creditURL);
  Widget build(BuildContext context) {
    //double c_width = MediaQuery.of(context).size.width*0.8;
    // print(imageURL);
    return Column(
      children: <Widget>[
        Container(
          child: Image(
            image: NetworkImage(imageURL),
            errorBuilder: (BuildContext context, Object exception,
                StackTrace stackTrace) {
              return Text('');
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Text(
            articleBody,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'PlayfairDisplay',
                fontSize: 24),
          ),
        ),
        creditURL != null
            ? Container(
                child: GestureDetector(
                    onTap: () async {
                      if (await canLaunch(creditURL)) {
                        await launch(creditURL);
                      } else {
                        print("Error Cannot launch credit url");
                      }

                      print('Credit URL: ' + creditURL);

                      Feedback.forTap(context);
                    },
                    child: Text(creditURL)))
            : Container(),
        // Spacer()
      ],
    );
  }
}
