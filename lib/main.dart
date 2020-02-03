import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //await SystemChrome.setPreferredOrientations([
  //Lock Orientation to Portrait

  //DeviceOrientation.portraitDown,
  //DeviceOrientation.portraitUp,

  //Lock Orientation to Landscape
  //DeviceOrientation.landscapeLeft,
  //DeviceOrientation.landscapeRight
  //]);

  runApp(MaterialApp(
    title: 'Adapt Portrait and Landscape',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Adapt Portrait and Landscape'),
        centerTitle: true,
      ),
      body: media == Orientation.portrait
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red[50],
                    child: Center(
                      child: Text('First'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue[100],
                    child: Center(
                      child: Text('Second'),
                    ),
                  ),
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red[50],
                    child: Center(
                      child: Text('First'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue[100],
                    child: Center(
                      child: Text('Second'),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
