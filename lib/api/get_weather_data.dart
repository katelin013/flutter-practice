import 'package:flutter/material.dart';
import 'package:flutterwidgetexample/api/http_utils.dart';
import 'package:flutterwidgetexample/config.dart';
import 'package:dio/dio.dart';
import 'package:flutterwidgetexample/entity/weather_result_entity.dart';

class GetWeatherData extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
            title: Text('GetWeatherData'),
            ),
            body: Column(
                children: <Widget>[
                    new RaisedButton(
                        child: Text('Get Weather data'),
                        onPressed: getWeather,
                    )
                ],
            )
        );
    }
}

// get weather data
void getWeather() async {
    var map = Map();
    map["path"] = "F-C0032-001";
    map["token"] = weatherToken;
    var res = await HttpUtils.get("/:path?Authorization=:token", map);
    var weatherResult = WeatherResultEntity().fromJson(res);
}