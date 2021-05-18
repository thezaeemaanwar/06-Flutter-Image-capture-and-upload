import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DisplayPicture.dart';
import 'dart:async';
import 'package:camera/camera.dart';

class AddImage extends StatefulWidget {
  AddImage({Key key}) : super(key: key);
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(0, 0, 0, 1),
              Color.fromRGBO(0, 0, 0, 0.7)
            ])),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0, 0, 0, 0.1),
                        padding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 60,
                          ),
                        ),
                        Text(
                          "Take Picture",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ]),
                      onPressed: () => {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0, 0, 0, 0.1),
                        padding:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Icon(
                            Icons.photo_library_outlined,
                            size: 60,
                          ),
                        ),
                        Text(
                          "Upload Picture",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ]),
                      onPressed: () => {},
                    ),
                  ]),
            )));
  }
}
