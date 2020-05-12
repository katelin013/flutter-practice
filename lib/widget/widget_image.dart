import 'package:flutter/material.dart';

/// ImageWidget
/// asset : 從本地端取圖片, 新增一個 assets/images 的 folder, 然後再 pubspec.yaml 檔中註冊就可以使用
/// Image.network : 直接讀取網路圖片
class ImageWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('ImageWidget'),
            ),
            body: Center(
                child: Center(
                    child: Center(child: Image.asset('images/flutter-logo.png')) //從本地端取圖
//              child: Center(child: Image.network('https://flutter.dev/images/flutter-logo-sharing.png'))  //讀取網路圖片
                ),
            )
        );
    }
}