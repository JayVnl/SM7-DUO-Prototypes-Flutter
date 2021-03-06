import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:vector_math/vector_math_64.dart'as vector;
import 'package:arkit_plugin/arkit_plugin.dart';

class HelloWorldScreen extends StatefulWidget
{
  @OverconstrainedError
  _HelloWorldScreenState createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen>
{
  ARKitController _arKitController;

  @override
  void dispose()
  {
    super.dispose();

    _arKitController?.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      child: ARKitSceneView(onARKitViewCreated: createARView,),
    ),
  );

  void createARView(ARKitController arKitController)
  {
    this._arKitController = arKitController;

    this._arKitController.add(createARText());
  }

  createARText()
  {
    final txt = ARKitText(
      text: "Flutter test",
      extrusionDepth: 1,
      materials: [
        ARKitMaterial(
          diffuse: ARKitMaterialProperty(color: Colors.blue),
        ),
      ],
    );

    return ARKitNode(
      geometry: txt,
      position: vector.Vector3(-0.3, 0.3, -1.4),
      scale: vector.Vector3(0.02, 0.02, 0.02),
    );
  }
}