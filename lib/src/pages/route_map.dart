import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:mapbox_commute/src/utils/route.dart';

class TransportMap extends StatelessWidget {
  final List<RouteLine> routes;

  TransportMap(this.routes);

  @override
  Widget build(BuildContext context) {
    return MapboxMap(
      accessToken: 'YOUR_MAPBOX_ACCESS_TOKEN',
      styleString: 'mapbox://styles/mapbox/streets-v11',
      initialCameraPosition: CameraPosition(
        target: routes.first.waypoints.first,
        zoom: 11.0,
      ),
      onMapCreated: (controller) {
        // Add each route to the map
        for (var route in routes) {
          controller.addLine(
            LineOptions(
              geometry: route.waypoints,
              lineColor: Colors.blue.value.toRadixString(16),
              lineWidth: 5.0,
              lineOpacity: 0.8,
            ),
          );
        }
      },
    );
  }
}
