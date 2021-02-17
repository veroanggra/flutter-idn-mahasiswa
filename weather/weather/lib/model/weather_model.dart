import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather/common/util.dart';
import 'package:weather/model/location.dart';

import 'network.dart';

class WeatherModel {
  Future<dynamic> getCity(cityName) async {
    String endpoint = 'weather?q=$cityName&appid=$apiKey';
    String url = baseUrl + endpoint;
    Network networkHelper = Network(url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getClimaData() async {
    Location location = Location();
    await location.getCurrentLocation();
    double latitute = location.latitude;
    double longitude = location.longitude;
    print(latitute);
    print(longitude);
    String endPoint = 'weather?lat=$latitute&lon=$longitude&appid=$apiKey';
    String url = baseUrl + endPoint;
    Network networkHelper = Network(url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
