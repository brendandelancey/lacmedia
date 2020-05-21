import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(columnWidths: {
      1: FractionColumnWidth(0.5)
    }, children: [
      TableRow(children: <Widget>[
        Container(
//                width: ,
          height: MediaQuery.of(context).size.height ,
          child: RaisedButton(
              onPressed: () {}, child: Text('Liberal'), color: Colors.red),
        ),
        Container(
//          width: 1,
          height: MediaQuery.of(context).size.height ,
          child: RaisedButton(
              onPressed: () {},
              child: Text('Conservative'),
              color: Colors.blue),
        ),
      ]),
    ]);
  }
}
