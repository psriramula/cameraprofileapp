import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CameraWidget extends StatefulWidget {
  final CameraDescription cameraDesc;

  CameraWidget({Key key, @required this.cameraDesc}) : super(key: key);

  @override
  _CameraWidgetState createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 9,
        child: Center(
          child: Container(
            child: Text(widget.cameraDesc.lensDirection.toString()),
          ),
        ));
  }
}
