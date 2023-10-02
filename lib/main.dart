import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() {
  runApp(const MyApp());
}

const String mapboxApiKey =
    'pk.eyJ1IjoiZ2Vsb3RpbngyIiwiYSI6ImNsbjhhNmYzODEzZXQyanA5ZzUxOXg4bnMifQ.o6hzwT-6FUhrfa_eC9-ZsA';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: MapboxMap(
        accessToken: mapboxApiKey,
        styleString: MapboxStyles.MAPBOX_STREETS,
        onMapCreated: (controller) {
          controller.addSymbol(const SymbolOptions(
            geometry: LatLng(13.7594462, 121.0563053),
            textField: 'Marker',
          ));
        },
        initialCameraPosition: const CameraPosition(
            target: LatLng(13.7594462, 121.0563053), zoom: 12.0),
      )),
    );
  }
}
