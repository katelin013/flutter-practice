import 'package:flutter/material.dart';

class TableViewWidget extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: AppBar(
            title: Text('TableWidget'),
            ),
            body: Center(
                child: Table(
                    columnWidths: const <int, TableColumnWidth>{
                        // 指定索引及固定列寬
                        0: FixedColumnWidth(100.0),
                        1: FixedColumnWidth(100.0),
                        2: FixedColumnWidth(100.0),
                    },
                    // 設定表格樣式
                    border: TableBorder.all(
                        color: Colors.black, width: 2.0, style: BorderStyle.solid
                    ),
                    children: const <TableRow>[
                        TableRow(
                            children: <Widget>[
                                Text('Title_one'),
                                Text('Title_two'),
                                Text('Title_three')
                            ]
                        ),
                        TableRow(
                            children: <Widget>[
                                Text('Content_two_a'),
                                Text('Content_two_b'),
                                Text('Content_two_c')
                            ]
                        ),
                        TableRow(
                            children: <Widget>[
                                Text('Content_three_a'),
                                Text('Content_three_b'),
                                Text('Content_three_c')
                            ]
                        ),
                        TableRow(
                            children: <Widget>[
                                Text('Content_four_a'),
                                Text('Content_four_b'),
                                Text('Content_four_c')
                            ]
                        ),
                    ],
                )
            )
        );
    }
}