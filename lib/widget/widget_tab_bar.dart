import 'package:flutter/material.dart';
import 'package:flutterwidgetexample/page/page_one.dart';
import 'package:flutterwidgetexample/page/page_two.dart';
import 'package:flutterwidgetexample/page/page_three.dart';

class TabBarWidget extends StatelessWidget {
    final List<Tab> myTabs = <Tab>[
        Tab(text: 'PageOne'),
        Tab(text: 'PageTwo'),
        Tab(text: 'PageThree')
    ];
    final pages = [ PageOne(), PageTwo(), PageThree() ];
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: DefaultTabController(
                length: myTabs.length,
                child: Scaffold(
                    appBar: AppBar(
                        title: Text('TabBarWidget'),
                        bottom: TabBar(
                            tabs:myTabs
                        ),
                    ),
                    body: TabBarView(
                        children: <Widget>[ pages[0], pages[1], pages[2] ],
                    ),
                )
            ),
        );
    }
}