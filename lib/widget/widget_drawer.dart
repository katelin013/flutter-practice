import 'package:flutter/material.dart';
import 'package:flutterwidgetexample/page/page_one.dart';
import 'package:flutterwidgetexample/page/page_two.dart';
import 'package:flutterwidgetexample/page/page_three.dart';

class DrawerWidget extends StatefulWidget {
    @override
    _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<DrawerWidget>{
    int _currentIndex = 0;
    final pages = [ PageOne(), PageTwo(), PageThree() ];
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
                title: Text('DrawerWidget'),
            ),
            drawer: Drawer(
                child: ListView(
                    children: <Widget>[
                        UserAccountsDrawerHeader(
                            accountName: new Text('Account Name'),
                            accountEmail: new Text('Email Name'),
                            currentAccountPicture: new CircleAvatar(backgroundImage: new AssetImage("images/flutter-logo.png"),),
                        ),
                        ListTile(
                            leading: new CircleAvatar(child: Icon(Icons.chrome_reader_mode)),
                            title: Text('Page One'),
                            onTap: () {
                                _onItemClick(0);
                            },
                        ),
                        ListTile(
                            leading: new CircleAvatar(child: Icon(Icons.code)),
                            title: Text('Page Two'),
                            onTap: () {
                                _onItemClick(1);
                            },
                        ),
                        ListTile(
                            leading: new CircleAvatar(child: Icon(Icons.computer)),
                            title: Text('Page Three'),
                            onTap: () {
                                _onItemClick(2);
                            },
                        ),
                    ],
                ),
            ),
            body: pages[_currentIndex],
        );
    }

    void _onItemClick(int index) {
        setState(() {
            _currentIndex = index;
            Navigator.of(context).pop();
        });
    }
}