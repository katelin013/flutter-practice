import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class ProviderSample extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return MultiProvider(
            providers: [ChangeNotifierProvider.value(value: MyCountChangeNotifier())],
            child: MaterialApp(
                home: MainPage(),
            ),
        );
    }
}

/// ChangeNotifier :
/// 主要是用來註冊一個觀察者, 會通知 NotifyListeners 來通知狀態改變
///
/// ChangeNotifierProvider :
/// 用在向其他子結點, 底層頁面, 提供 ChangeNotifier 的 Instance
///
/// Consumer :
/// 當狀態發生改變時, 可以將資料透過 Consumer 來接收更改對應資料
/// *** : 將 Consumer 放在 widget 較低的位置上, 不然會重構整個 widget
///
/// Provider.of :
/// 透過 Consumer update date 會 reload 整個 widget,
/// 所以有時候可以用 Provider.of 並將 listener 設定為 false
/// 就可以訪問特定 data, 也不會讓整個 Widget reload

class MainPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        //透過 Provider.of 來獲取資料
        final counter = Provider.of<MyCountChangeNotifier>(context);

        return Scaffold(
            appBar: AppBar(
                title: Text('ProviderSample'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text(
                            'Count: ${counter.count}',
                        ),
                        RaisedButton(
                            //點擊按鈕後，導轉跳到B頁
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => BPage()),
                            ),
                            child: Text('NextPage'),
                        ),
                    ],
                ),
            ),
        );
    }
}

class BPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('B Page'),
            ),
            body: Center(
                // 透過 Consumer 來接收更改對應資料
                child: Consumer<MyCountChangeNotifier>(builder: (context, counter, _) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Text(
                                'Count:',
                            ),
                            Text(
                                '${counter.count}',
                            ),
                        ],
                    );
                }),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                    // 使用 Provider.of，並且將 listen 設定為 false(若沒設定，預設為 true)，
                    // 則不會再次調用 Widget 重新構建（ build ）畫面 ，更省效能。
                    Provider.of<MyCountChangeNotifier>(context, listen: false)
                        .increment();
                },
                child: const Icon(Icons.add),
            ),
        );
    }
}

class MyCountChangeNotifier with ChangeNotifier {

    // 設定一個整數私有變數 _count的欄位，初值為零
    int _count = 0;

    //可以透過 Consumer 來獲得當下 count 值
    int get count => _count;

    //當點擊右下角＋ 浮動按鈕，會呼叫此方法
    //此方法會將 _count 累加 1，並叫 notifyListeners
    increment() {
        _count++;
        notifyListeners();
    }
}