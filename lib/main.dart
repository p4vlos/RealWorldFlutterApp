import 'package:flutter/material.dart';

void main() => runApp(new RealWorldApp());

class RealWorldApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new RealWorldState();
    }
}

class RealWorldState extends State<RealWorldApp> {
  var _isLoading = true;

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("REAL WORLD APP BAR"),
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.refresh),
              onPressed: () {
                print("Reloading...");
                setState(() {
                  _isLoading = false;
                });
              },)
            ],
          ),
          body: new Center(
            child: _isLoading ? new CircularProgressIndicator() :
              new Text("Finished Loading..."),
          ),
        ),
      );
    }
}