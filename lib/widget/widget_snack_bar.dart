import 'package:flutter/material.dart';

/// SnackBarWidget
class SnackBarWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('SnackBarWidget'),
            ),
            body: Center(
                child: RaisedButton(
                    child: Text('Show snackbar message'),
                    onPressed: (){
                        final snackBar = new SnackBar(content: new Text('Show Message'));
                        Scaffold.of(context).showSnackBar(snackBar);
                    },
                )
            ),
        );
    }
}