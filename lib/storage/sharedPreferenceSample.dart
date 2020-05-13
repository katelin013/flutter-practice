import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpSample extends StatefulWidget{
    SpSample({Key key, this.title}) : super(key: key);
    final String title;
    @override
    _SpState createState() => _SpState();
}

class _SpState extends State<SpSample>{
    final String prefCounter = "prefCounter";
    int _counter = 0;

    @override
    void initState(){
        super.initState();
        _loadCounter();
    }

    _loadCounter() async{
        SharedPreferences prefs = await SharedPreferences.getInstance();
        setState(() {
            _counter = (prefs.getInt(prefCounter) ?? 0);
        });
    }

    _incrementCounter() async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        setState(() {
            _counter = (prefs.getInt(prefCounter) ?? 0) + 1;
            prefs.setInt(prefCounter, _counter);
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('SpSample'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('counter in sp : $_counter'),
                        RaisedButton(
                            child: Text('Click'),
                            onPressed: (){
                                _incrementCounter();
                            },
                        )
                    ],
                ),
            ),
        );
    }
}