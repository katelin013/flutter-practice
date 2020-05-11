// 載入 material 庫
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

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
              body: SwitchPage(),
          )
        );
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// Switch Page
/// 切換使用 Navigator 來控制
/// 傳值的方式要將資料放在 MaterialPageRoute 中
class SwitchPage extends StatelessWidget {
    Product product = new Product("product_name", "product_desc", 100);
    @override
    Widget build(BuildContext context) {
        print("kayle build test");
        return Center(
            child: RaisedButton(
                child: Text('跳到下一頁'),
                onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => NextPage(product: product))
                    );
                },
            ),
    );
  }
}

class NextPage extends StatelessWidget {
    final Product product;
    NextPage({Key key, this.product}) : super(key: key);
    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('this is Next page'),
        ),
        body: _NextPage(product: product),
    );
  }
}

class _NextPage extends StatelessWidget {
    final Product product;
    _NextPage({Key key, this.product}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Column(
                children: <Widget>[
                    Text(product.name),
                    RaisedButton(
                        child: Text('Back to mainpage'),
                        onPressed: (){
                            Navigator.pop(context, 'Second Page Data');
                        },
                    )
                ],
            )
        );
     }
}

class Product {
    String name;
    String desc;
    int price;
    Product(this.name, this.desc, this.price);
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/// TextFieldWidget
/// Controller : 監聽輸入的內容
/// InputDecoration : hint
/// FocusScope.of(context).unfocus() : 隱藏鍵盤
class TextFieldWidget extends StatelessWidget {
    final TextEditingController myController = new TextEditingController();
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Column(
                children: <Widget>[
                    TextField(
                        controller: myController,
                        decoration: InputDecoration(hintText: "Please input.."),
                    ),
                    RaisedButton(
                        child: Text("Toast input"),
                        onPressed: (){
                            FocusScope.of(context).unfocus();
                            Toast.show(myController.text, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                        },
                    )
                ],
            )
        );
    }
}

/// ImageWidget
/// asset : 從本地端取圖片, 新增一個 assets/images 的 folder, 然後再 pubspec.yaml 檔中註冊就可以使用
/// Image.network : 直接讀取網路圖片
class ImageWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Center(child: Image.asset('images/flutter-logo.png')) //從本地端取圖
//            child: Center(child: Image.network('https://flutter.dev/images/flutter-logo-sharing.png'))  //讀取網路圖片
        );
    }
}

/// ButtonWidget
/// 點擊時會跳出一個 Toast (須先引入 Taost lib)
class ButtonWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
            child: RaisedButton(
                child: Text('Button'), // change it to sign-in
                textColor: Colors.white,
                color: Colors.green,
                disabledColor: Colors.blue,
                onPressed: (){
                    Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                },
            )
        );
    }
}

/// RowWidget
class RowWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Row(
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
        );
    }
}

///
/// 設定一個 Container 置中在畫面中間,
/// Container 中有一個 Child Text
/// alignment : 設定 Container 的位置
/// constraints : 最大&最小的寬跟高
/// margin : 上下左右的距離
///
class ContainerWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Center(
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
        );
    }
}