import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayPicture extends StatelessWidget {
  DisplayPicture({Key key, this.image}) : super(key: key);
  final File image;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(46, 25, 96, 1),
              Color.fromRGBO(93, 16, 73, 1)
            ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 3,
                  backgroundImage: FileImage(image),
                  backgroundColor: Colors.transparent,
                )
              ],
            ))));
  }
}
