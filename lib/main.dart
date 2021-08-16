import 'package:dine/registerRestaurant.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

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
        backgroundColor: Colors.grey,

        body:
        Column(

          children: <Widget>[
            Container(

              width: double.infinity,
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.all(10),

              child: Text(
                "Dine Easy",
                style: TextStyle(
                    fontSize: 50,
                  color: Colors.cyanAccent,
                  fontFamily: "Times New Roman"
                ),
                textAlign: TextAlign.center,

              ),

            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(100),
              child: Text(
                  "Register your \n restaurant",
                style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 26,
                  fontWeight: FontWeight.bold

                ),
              ),
            ),
            Button(),






          ],
        ),
      ),
    );
  }

}

class Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.cyanAccent,
        splashColor: Colors.white,
        child: Text("Next"),
        onPressed: (){
          print("Clicked");
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
            return homeScreen();
          }),);
        });
  }
}

