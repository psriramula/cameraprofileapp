import 'package:flutter/material.dart';

class CameraWidget extends StatefulWidget {
  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Container(
        alignment: Alignment.center,
        child: Text('Camera View finder'),
      ),
    );
  }
}
