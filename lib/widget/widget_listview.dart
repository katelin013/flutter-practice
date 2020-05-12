import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget{
    final List<Items> listItems = new List<Items>.generate(100, (i){
        return Items(
            name: 'Test Title $i',
            content: 'Test Content $i',
        );
    });
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
            title: Text('TextFieldWidget'),
            ),
            body: Center(
                child: ListView.builder(
                    itemCount: listItems.length,
                    itemBuilder: (context, index) {
                        return ListTile(
                            leading: Icon(Icons.event_seat),
                            title: Text('${listItems[index].name}'),
                            subtitle: Text('${listItems[index].content}'),
                        );
                    }
                ),
            )
        );
    }
}

class Items {
    final String name;
    final String content;

    Items({this.name, this.content});
}