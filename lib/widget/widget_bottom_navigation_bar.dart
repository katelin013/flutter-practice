import 'package:flutter/material.dart';
import 'package:flutterwidgetexample/page/page_one.dart';
import 'package:flutterwidgetexample/page/page_two.dart';
import 'package:flutterwidgetexample/page/page_three.dart';

class BottomNavigationBarWidget extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('BottomNavigationBar'),
            ),
            body: BottomNavigationController()
        );
    }
}

class BottomNavigationController extends StatefulWidget {
    BottomNavigationController({Key key}) : super(key: key);

    @override
    _BottomNavigationControllerState createState() =>
        _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
    //目前選擇頁索引值
    int _currentIndex = 0; //預設值
    final pages = [PageOne(), PageTwo(), PageThree()];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: pages[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('PageOne')),
                    BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('PageTwo')),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle), title: Text('PageThree')),
                ],
                currentIndex: _currentIndex, //目前選擇頁索引值
                fixedColor: Colors.amber, //選擇頁顏色
                onTap: _onItemClick, //BottomNavigationBar 按下處理事件
            ),
        );
    }
    //BottomNavigationBar 按下處理事件，更新設定當下索引值
    void _onItemClick(int index) {
        setState(() {
            _currentIndex = index;
        });
    }
}