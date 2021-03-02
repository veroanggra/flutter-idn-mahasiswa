import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/view/search_view.dart';

class ProgressView extends StatefulWidget {
  @override
  _ProgressViewState createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  getLocation() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getClimaData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SearchView(
        weatherData: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitDoubleBounce(
        color: Colors.white,
        size: 120.0,
      ),
    );
  }
}
