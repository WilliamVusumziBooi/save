import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //@override
  var index = 0;

  int indexMethod(){
    if(index == 0){
      index = 1;
      return 1;
    }
    index = 0;
    return 0;
  }

  Widget build(BuildContext context) {
    var title = ["Admin's screen", "Admin's changed screen"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dine Easy"),
        ),
        body: Column(
          children: <Widget>[
            Text(title[index]),
            RaisedButton(
              child: Text("Add a restaurant"),
              onPressed: () {
                print("Chose to add a restaurant");
                indexMethod();
                print(index);
              },
            ),
            RaisedButton(
              child: Text("Remove a restaurant"),
              onPressed: () {
                print("Chose to remove a restaurant");
              },
            ),
            RaisedButton(
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
