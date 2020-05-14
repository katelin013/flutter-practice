import 'package:flutter/material.dart';
import 'package:flutterwidgetexample/utils/http_utils.dart';
import 'package:flutterwidgetexample/config.dart';
import 'package:flutterwidgetexample/entity/weather_result_entity.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class GetWeatherData extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MultiProvider(
            providers: [ChangeNotifierProvider.value(value: TextChangeNotifier())],
            child: MaterialApp(
                home: MainPage(),
            ),
        );
    }
}

class MainPage extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        //透過 Provider.of 來獲取資料
        final data = Provider.of<TextChangeNotifier>(context);
        return new Scaffold(
            appBar: AppBar(
            title: Text('GetWeatherData'),
            ),
            body: Column(
                children: <Widget>[
                    Text(
                        data.text
                    ),
                    new RaisedButton(
                        child: Text('Get Weather data'),
                        onPressed: () async {
                            var map = Map();
                            map["path"] = "F-C0032-001";
                            map["token"] = weatherToken;
                            var res = await HttpUtils.get("/:path?Authorization=:token", map);
                            Provider.of<TextChangeNotifier>(context, listen: false)
                                .setData(res.toString());
                        },
                    )
                ],
            )
        );
    }
}

// get weather data
void getWeather(BuildContext context) async {
    var map = Map();
    map["path"] = "F-C0032-001";
    map["token"] = weatherToken;
    var res = await HttpUtils.get("/:path?Authorization=:token", map);
    Provider.of<TextChangeNotifier>(context, listen: false)
        .setData(res.toString());
//    var weatherResult = WeatherResultEntity().fromJson(res);  // 將 json 轉成一個 bean
}

class TextChangeNotifier with ChangeNotifier {
    String _text = "";
    String get text => _text;
    setData(String data){
        _text = data;
        print("setdata : $_text");
        notifyListeners();
    }
}