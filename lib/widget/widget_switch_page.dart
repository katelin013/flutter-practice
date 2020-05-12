import 'package:flutter/material.dart';

/// Switch Page
/// 切換使用 Navigator 來控制
/// 傳值的方式要將資料放在 MaterialPageRoute 中
class SwitchPage extends StatelessWidget {
    Product product = new Product("product_name", "product_desc", 100);
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('SwitchPage'),
            ),
            body: Center(
                child: RaisedButton(
                    child: Text('跳到下一頁'),
                    onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => NextPage(product: product))
                        );
                    },
                ),
            )
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