import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Location({this.latitude, this.longitude});

  Future<Location> getCurrentLocation() async {
    try {
      var position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      return Location(
          latitude: position.latitude, longitude: position.longitude);
    } catch (exception) {
      print(exception);
      return Location(latitude: 0.0, longitude: 0.0);
    }
  }
}
