import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Texts extends StatelessWidget {
  @override
  String articleBody;
  String imageURL;
  String creditURL;
  Texts(this.articleBody, this.imageURL, this.creditURL);
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
