import 'package:geolocator/geolocator.dart';

class Location{
  double ?latitude;
  double ?longitude;
  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.low,
    //distanceFilter: 100,
  );
  Future<void> getCurrentLocation()async{
    try{
      //somethingThatExpectslessThan10(12);
      Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    }catch (e){
      print(e);
    }
  }
}
