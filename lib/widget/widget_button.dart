import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/// ButtonWidget
/// 點擊時會跳出一個 Toast (須先引入 Taost lib)
class ButtonWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('ButtonWidget'),
            ),
            body: Center(
                child: RaisedButton(
                    child: Text('Button'), // change it to sign-in
                    textColor: Colors.white,
                    color: Colors.green,
                    disabledColor: Colors.blue,
                    onPressed: (){
                        Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                    },
                )
            )
        );
    }
}