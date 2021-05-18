import 'package:flutter/material.dart';
import 'AddImage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MyHomePage(title: 'Image'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 0, 0, 0.1),
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text(
                    "Add an Image",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddImage()))
                  },
                ),
              ),
            ),
          )),
    );
  }
}
