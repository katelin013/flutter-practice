import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
            title: Text('GridViewWidget'),
            ),
            body: GridView.count(
                crossAxisCount: 3,
                children: new List.generate(50, (index) {
                    return new Center(
                        child: new CircleAvatar(child: Icon(Icons.computer)),
                    );
                }),
            )
        );
    }
}