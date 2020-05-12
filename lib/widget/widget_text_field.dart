import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/// TextFieldWidget
/// Controller : 監聽輸入的內容
/// InputDecoration : hint
/// FocusScope.of(context).unfocus() : 隱藏鍵盤
class TextFieldWidget extends StatelessWidget {
    final TextEditingController myController = new TextEditingController();
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('TextFieldWidget'),
            ),
            body: Center(
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
                ),
            )
        );
    }
}