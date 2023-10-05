import 'package:mapbox_gl/mapbox_gl.dart';

class RouteLine {
  final String shortName;
  final String longName;
  final String heading;
  final String type;
  final List<LatLng> waypoints;

  RouteLine(this.shortName, this.longName, this.heading, this.type, this.waypoints);
}

List<RouteLine> predefinedRoutes = [
  RouteLine(
    'BP05',
    'Batangas City Proper - Alangilan',
    'Hiway - Bayan - Bago',
    'Jeep',
    [
      LatLng(13.789215, 121.062584), // Grand Terminal
      LatLng(13.797050, 121.070678), // Balagtas
      LatLng(13.791968, 121.070139), // Hypermarket
      LatLng(13.786158, 121.069061), // GCH / BSU Alangilan
      LatLng(13.780124, 121.067788), // Nueva Villa
      LatLng(13.775638, 121.066433), // SSS
      LatLng(13.770251, 121.065069), // Don Ramos
      LatLng(13.768010, 121.063569), // Regional Hospital
      LatLng(13.765669, 121.061368), // Capitolio
      LatLng(13.764791, 121.059987), // Hilltop
      LatLng(13.763880, 121.058571), // UB
      LatLng(13.762740, 121.057461), // Lawas
      LatLng(13.760003, 121.057545), // Nuciti
      LatLng(13.758400, 121.057685), // Traders
      LatLng(13.756212, 121.057203), // P. Zamora
      LatLng(13.753506, 121.056226), // M.H. Del Pilar
      LatLng(13.750583, 121.056618), // Bagong Palengke
      // Add more waypoints as needed
    ],
  ),
  // Add more routes as needed
];