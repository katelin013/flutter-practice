import 'package:flutter/material.dart';

/// 設定一個 Container 置中在畫面中間,
/// Container 中有一個 Child Text
/// alignment : 設定 Container 的位置
/// constraints : 最大&最小的寬跟高
/// margin : 上下左右的距離
///
class ContainerWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('ContainerWidget'),
            ),
            body: Center(
                child: Container(
                    child: Text('First Flutter App',
                        style: TextStyle(color: Colors.white),),
                    color: Colors.red,
                    alignment: Alignment.center,
                    constraints: BoxConstraints(
                        maxWidth: 300, maxHeight: 300, minWidth: 50, minHeight: 50
                    ),
                    margin: EdgeInsets.all(100),
                )
            )
        );
    }
}