import 'package:flutter/material.dart';

class BottomPopup {
  showBottomSheetModal(context, Widget screen, double heightPercentage) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        ),
        builder: (context) {
          return Container(
              height: MediaQuery.of(context).size.height * heightPercentage,
              child: screen);
        });
  }
}
