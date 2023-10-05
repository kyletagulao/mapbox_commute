import 'package:flutter/material.dart';
import 'package:mapbox_commute/src/utils/route.dart';
import 'package:mapbox_commute/src/pages/route_map.dart'; // Adjust the import path to the actual location

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transport Map Example'),
        ),
        body: TransportMap(predefinedRoutes), // Assuming predefinedRoutes is defined
      ),
    );
  }
}
