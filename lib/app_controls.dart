import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'constants.dart';

class AppControls extends StatefulWidget {
  List<CameraDescription> configuredCameras;
  String selectedLensDirection;
  int selectedLens;

  AppControls(
      {Key key,
      this.configuredCameras,
      this.selectedLensDirection,
      this.selectedLens})
      : super(key: key);

  @override
  _AppControlsState createState() => _AppControlsState();
}

class _AppControlsState extends State<AppControls> {
  List<Widget> getLensButtons() {
    List<Widget> lens = new List<Widget>();

    widget.configuredCameras.forEach((e) {
      lens.add(
        FlatButton(
          child: Text(e.name),
          onPressed: () {
            print(' clicked ' + e.name);
          },
        ),
      );
    });

    return lens;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: getLensButtons(),
      ),
    );
  }
}
