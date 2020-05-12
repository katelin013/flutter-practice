import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/// AlertDialog
class AlertPage extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('TextFieldWidget'),
            ),
            body: Center(
                child: RaisedButton(
                    child: Text('Show alertdialog'),
                    onPressed: () async {
                        final ConfirmAction action = await confirmDialog(context);
                        Toast.show("Click action : $action", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                    },
                ),
            )
        );
    }
}

enum ConfirmAction { ACCEPT, CANCEL }

Future<ConfirmAction> confirmDialog(BuildContext context){
    return showDialog<void>(
        context: context,
        builder: (BuildContext context){
            return AlertDialog(
                title: Text('TestTitle'),
                content: const Text('TestContent'),
                actions: <Widget>[
                    FlatButton(
                        child: Text('Confirm'),
                        onPressed: (){
                            Navigator.of(context).pop(ConfirmAction.ACCEPT);
                        },
                    ),
                    FlatButton(
                        child: Text('Cancel'),
                        onPressed: (){
                            Navigator.of(context).pop(ConfirmAction.CANCEL);
                        },
                    )
                ],
            );
        },
    );
}