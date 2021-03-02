import 'dart:ui';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather/common/icon_setting.dart';
import 'package:weather/common/style.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/view/result_view.dart';

class SearchView extends StatefulWidget {
  final weatherData;

  const SearchView({this.weatherData});

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  int temparature;
  String cityName;
  String country;
  String main;
  IconData weatherIcon;
  double speed;
  int humidity;
  int pressure;
  var formattedDate;
  String wallurl;

  WeatherModel weatherModel = WeatherModel();
  IconSetting iconSetting = IconSetting();

  @override
  void initState() {
    super.initState();
    setupUI(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/image/$wallurl'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8), BlendMode.dstATop),
        )),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () async {
                        var currWeather = await weatherModel.getClimaData();
                        setupUI(currWeather);
                      },
                      child: Icon(
                        FlutterIcons.location_evi,
                        size: 40.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () async {
                        var cityname = await Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ResultView();
                        }));
                        if (cityname != null) {
                          var currWeatherData =
                              await weatherModel.getCity(cityname);
                          print(currWeatherData);
                          setupUI(currWeatherData);
                        }
                      },
                      child: Icon(
                        FlutterIcons.search_evi,
                        size: 40.0,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '$temparature',
                          style: TemperatureTextStyle,
                        ),
                        Icon(
                          weatherIcon,
                          size: 60.0,
                        )
                      ],
                    ),
                    Text(
                      main,
                      style: DescriptionTextStyle,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$cityName, $country',
                        style: LocationTextStyle,
                      ),
                      Text(
                        formattedDate,
                        style: DateTextStyle,
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              FlutterIcons.wind_fea,
                              size: 30.0,
                            ),
                            Icon(
                              FlutterIcons.md_speedometer_ion,
                              size: 30.0,
                            ),
                            Icon(
                              FlutterIcons.wi_humidity_wea,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: <Widget>[
                            Text('${speed.toString()} m/s'),
                            Text('${pressure.toString()} Pa'),
                            Text('${humidity.toString()} g/m³')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void setupUI(dynamic weather) {
    setState(() {
      temparature = weather['main']['temp'];
      cityName = weather['name'];
      country = weather['sys']['country'];
      main = weather['weather'][0]['description'];
      humidity = weather['main']['humidity'];
      pressure = weather['main']['pressure'];
      speed = weather['wind']['speed'];
      var condition = weather['weather'][0]['id'];
      var timezone = weather['timezone'];
      var currdate = DateTime.now().toUtc().add(Duration(seconds: timezone));
      formattedDate = formatDate(
        currdate,
        [DD, ' | ', M, ' ', dd, ' | ', HH, ':', nn],
      );
      wallurl = (6 <= currdate.hour && currdate.hour <= 18)
          ? 'weather2-01.jpg'
          : 'weather1-01.jpg';
      weatherIcon = iconSetting.getWeatherIcon(condition);
    });
  }
}
