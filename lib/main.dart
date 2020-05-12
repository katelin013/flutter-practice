// 載入 material 庫
import 'package:flutter/material.dart';
import 'package:flutterwidgetexample/widget/widget.dart';

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

/// 將所有的 example 用一個 column 包
class ItemSelectWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final functions = [ ListViewWidget(), WidgetStack(), DrawerWidget(), TabBarWidget(), BottomNavigationBarWidget(), AlertPage(), SnackBarWidget(), SwitchPage(), TextFieldWidget(), ImageWidget(), ButtonWidget(), RowWidget(), ContainerWidget()];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(functions.length, (index) {
          return RaisedButton(
            child: Text(functions[index].toString()),
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => functions[index])
              );
            },
          );
      }),
    );
  }
}
