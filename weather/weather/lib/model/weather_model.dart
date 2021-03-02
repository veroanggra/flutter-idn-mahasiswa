import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather/common/util.dart';
import 'package:weather/model/location.dart';

import 'network.dart';

class WeatherModel {
  Future<dynamic> getCity(cityName) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&units=metric&appid=$apiKey';
    Network networkhelper = Network(url);
    var weatherData = await networkhelper.getData();
    return weatherData;
  }

  Future<dynamic> getClimaData() async {
    Location location = Location();
    await location.getCurrentLocation();
    double latitude = location.latitude;
    double longitude = location.longitude;
    print(latitude);
    print(longitude);
    String url ='https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&units=metric&appid=$apiKey';
    Network networkHelper = Network(url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
