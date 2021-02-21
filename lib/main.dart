import 'package:flutter/material.dart';
import 'camera_widget.dart';
import 'app_controls.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CameraWidget(),
              AppControls(),
            ],
          ),
        ),
      ),
    );
  }
}
