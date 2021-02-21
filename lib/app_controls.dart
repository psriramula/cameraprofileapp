import 'package:flutter/material.dart';

class AppControls extends StatefulWidget {
  @override
  _AppControlsState createState() => _AppControlsState();
}

class _AppControlsState extends State<AppControls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.camera_alt),
            // Provide an onPressed callback.
            onPressed: () async {},
          ),
        ],
      ),
    );
  }
}
