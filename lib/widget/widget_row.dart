import 'package:flutter/material.dart';

/// RowWidget
class RowWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('RowWidget'),
            ),
            body: Row(
                // X 軸對齊方式
                mainAxisAlignment: MainAxisAlignment.center,
                // Y 軸對齊方式
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Container(
                        color: Colors.amber,
                        child: Text('1', style: TextStyle(fontSize: 100))
                    ),
                    Container(
                        color: Colors.red,
                        child: Text('2', style: TextStyle(fontSize: 100))
                    ),
                    Container(
                        color: Colors.green,
                        child: Text('3', style: TextStyle(fontSize: 100))
                    ),
                ],
            )
        );
    }
}