import 'package:cameraprofileapp/camera.dart';
import 'package:flutter/material.dart';

import 'app_controls.dart';
import 'package:camera/camera.dart';
import 'constants.dart';
import 'camera_error.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  Map<String, List<CameraDescription>> getCameraConfiguration(
      List<CameraDescription> cameras) {
    return {
      Constants.BACK_CAMERA: cameras
          .where((element) => element.lensDirection == CameraLensDirection.back)
          .toList(),
      Constants.FRONT_CAMERA: cameras
          .where(
              (element) => element.lensDirection == CameraLensDirection.front)
          .toList()
    };
  }

  final Map<String, List<CameraDescription>> configuredCameras =
      getCameraConfiguration(cameras);

  var selectedCameraDirection = Constants.BACK_CAMERA;
  var selectedCamera = 0;

  CameraDescription getSelectedCamera(String direction, int index) {
    return configuredCameras[direction][index];
  }

  // Setting Back Camera first as first camera
  final firstCamera =
      getSelectedCamera(selectedCameraDirection, selectedCamera);

  runApp(MyApp(
    firstCamera: CameraWidget(cameraDesc: firstCamera),
    configuredCameras: cameras,
    selectedLensDirection: selectedCameraDirection,
    selectedLens: selectedCamera,
  ));
}

class MyApp extends StatelessWidget {
  Widget firstCamera;
  List<CameraDescription> configuredCameras;
  String selectedLensDirection;
  int selectedLens;
  MyApp(
      {this.firstCamera,
      this.configuredCameras,
      this.selectedLensDirection,
      this.selectedLens});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              firstCamera,
              AppControls(
                  configuredCameras: configuredCameras,
                  selectedLensDirection: selectedLensDirection,
                  selectedLens: selectedLens),
            ],
          ),
        ),
      ),
    );
  }
}
