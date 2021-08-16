import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  //@override
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  void indexMethod() {
    setState(() {
      if (_index == 0) {
        _index = 1;
      } else {
        _index = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    var title = ["Admin's screen", "Admin's changed screen"];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              width: double.infinity,
              child: Text(
                "Dine Easy",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            )),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(30),
              child: Text(
                title[_index],
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),

            RaisedButton(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide()
              ),
                color: Colors.cyanAccent,
                splashColor: Colors.white,
                child: Text("Approve a restaurant"),
                onPressed: () {
                  indexMethod();
                  print("clicked");
                }),
            RaisedButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide()
              ),
              color: Colors.cyanAccent,
              child: Text("Remove a restaurant"),
              onPressed: () {
                print("Chose to remove a restaurant");
              },
            ),
            RaisedButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  side: BorderSide()
              ),
              color: Colors.cyanAccent,
              child: Text("View the pending restaurants"),
              onPressed: () {
                print("Chosen to view the pending restaurants");
              },
            ),
          ],
        ),
      ),
    );
  }
}