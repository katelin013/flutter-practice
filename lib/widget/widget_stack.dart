import 'package:flutter/material.dart';

/// 不同的 Widget 堆疊
class WidgetStack extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
            title: Text('TextFieldWidget'),
            ),
            body: Center(
                child: Stack(
                    // 設定對齊的方式
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                        Container(
                            color: Colors.amber,
                            child: Text('First Container', style: TextStyle(fontSize: 100)),
                        ),
                        // 設定偏移
                        Positioned(
                            // 設定 Margin left 10
                            left: 10,
                            child: Container(
                                color: Colors.red,
                                child: Text('First Container', style: TextStyle(fontSize: 50)),
                            ),
                        ),
                    ],
                ),
            )
        );
    }
}