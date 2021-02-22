import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CameraError extends StatefulWidget {
  @override
  _CameraErrorState createState() => _CameraErrorState();
}

class _CameraErrorState extends State<CameraError> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 9,
        child: Center(
          child: Container(
              child: Icon(
            Icons.error,
          )),
        ));
  }
}
