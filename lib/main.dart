// 載入 material 庫
import 'package:flutter/material.dart';
import 'package:flutterwidgetexample/storage/providerSample.dart';
import 'package:flutterwidgetexample/storage/sharedPreferenceSample.dart';
import 'package:flutterwidgetexample/widget/widget.dart';
import 'package:flutterwidgetexample/api/get_weather_data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('FlutterExample'),
          ),
          body: ItemSelectWidget(),
        )
    );
  }
}

class ItemSelectWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final functions = [ GetWeatherData(), ContainerWidget(), RowWidget(), ButtonWidget(), ImageWidget(), TextFieldWidget(), SwitchPage(),
        SnackBarWidget(), AlertPage(), BottomNavigationBarWidget(), TabBarWidget(), DrawerWidget(), WidgetStack(),
        ListViewWidget(), GridViewWidget(), TableViewWidget(), SpSample(), ProviderSample()];
    return Center(
        child: GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 6.0,
            crossAxisSpacing: 4.0,
            children: new List.generate(functions.length, (index) {
                return RaisedButton(
                    child: Text(functions[index].toString().replaceAll("Widget", "")),
                    padding: const EdgeInsets.all(10.0),
                    onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => functions[index])
                        );
                    },
                );
            }),
        )
    );
  }
}
