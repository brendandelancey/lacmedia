import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:lacmedia/Screens/articleScreen.dart';
import 'main.dart';

// final DatabaseReference Ref = FirebaseDatabase.instance.reference();
// Ref.child().orderByChild
// Ref.orderByChild("height").addChildEventListener(new ChildEventListener() {
//   @Override
//   public void onChildAdded(DataSnapshot dataSnapshot, String prevChildKey) {
//     Dinosaur dinosaur = dataSnapshot.getValue(Dinosaur.class);
//     System.out.println(dataSnapshot.getKey() + " was " + dinosaur.height + " meters tall.");
//   }

//   // ...
// });

class List extends StatelessWidget {
  @override
  String politicalAffiliation;
  List(this.politicalAffiliation);
  Widget build(BuildContext context) {
    int color = 0xFFFFFFFF;

    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: new FirebaseAnimatedList(
                query: FirebaseDatabase.instance
                    .reference()
                    .child(politicalAffiliation)
                    .orderByChild('Order'),
                itemBuilder: (context, DataSnapshot snapshot,
                    Animation<double> animation, int x) {
                  // ! DB -> politicalAffiliation -> Article# -> Order: 0, Title: Corona, Image: URL,  Credit Link: URL, Content: BODY, Date: Date
                  // print(snapshot.key);
                  // print(snapshot.value);

                  var titleOfArticle = snapshot.value['Title'];
                  var dateCreated = snapshot.value['Date Created'];
                  var orderLowestIsFirst = snapshot.value['Order'];
                  var credit = snapshot.value['Credit'];
                  var contentOfArticle = snapshot.value['Content'];
                  var imageOfArticle = snapshot.value['Image'];

                  // print("Title: " + titleOfArticle);
                  // print("Date Created: " + dateCreated);
                  // print("Order: " + orderLowestIsFirst.toString());
                  // print("Credit URL: " + credit);
                  // print("Content: " + contentOfArticle);
                  // print("Image URL: " + imageOfArticle);

                  return Card(
                    color: Color(color),
                    child: ListTile(
                      title: Text(
                        titleOfArticle,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
//                      selected:select,
                      onTap: () {
                        // if (politicalAffiliation == 'Conservative') {
                        print("HERRRRRREEEEEE??????????????????????");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArticleScreen(
                                contentOfArticle,
                                titleOfArticle,
                                credit,
                                imageOfArticle,
                                dateCreated),
                          ),
                        );
                        // }
                        //  else {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) =>
                        //           FourthScreen(snapshot.value.toString()),
                        //     ),
                        //   );
                        // }
                      },
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
