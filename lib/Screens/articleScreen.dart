import 'package:flutter/material.dart';
import 'package:lacmedia/text.dart';

class ArticleScreen extends StatelessWidget {
  @override
  String articleBody;
  String title;
  String credit;
  String image;
  String date;

  ArticleScreen(
      this.articleBody, this.title, this.credit, this.image, this.date);
  Widget build(BuildContext context) {
    print("Title: " + title);
    print("Date Created: " + date);
    print("Credit URL: " + credit);
    print("Content: " + articleBody);
    print("Image URL: " + image);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black87,
        ),
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
              child: Texts(articleBody, image, credit));
        }));
  }
}
