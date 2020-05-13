import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

/// 透過 english_words 這個 lib , 來實作一個無限滾動的 listview
class ListViewWidget extends StatelessWidget{
    @override
      Widget build(BuildContext context) {
        return new MaterialApp(
            home: new RandomWords(),
        );
      }
}

class RandomWords extends StatefulWidget {
    @override
    RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
    final List<WordPair> _suggestions = <WordPair>[];
    final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text('TextFieldWidget'),
            ),
            body: _buildSuggestions(),
        );
    }

    Widget _buildSuggestions() {
        return new ListView.builder(
            padding: const EdgeInsets.all(16.0),
            /// 對每個建議的單字都會掉用一次 itemBuilder,
            /// 然後將單字添加到 ListTile 中
            /// 在偶數行, 會對單自添加一個 ListTile Row
            /// 在奇數行, 會添加一個 divider

            itemBuilder: (BuildContext _context, int i) {
                // 在每一列前, 加入一個 1 pixel 高的 divider
                if (i.isOdd) {
                    return new Divider();
                }
                // i~2 => i/2, return 整數
                // 這可以計算出 ListView 中減去 divider 後的實際單字數量
                final int index = i ~/ 2;
                // 如果是列表中的最後一個單字
                if (index >= _suggestions.length) {
                    // 會再產生10個單字, 然後添加到表中
                    _suggestions.addAll(generateWordPairs().take(10));
                }
                return _buildRow(_suggestions[index]);
            }
        );
    }

    Widget _buildRow(WordPair pair) {
        return new ListTile(
            title: new Text(
                pair.asPascalCase,
                style: _biggerFont,
            ),
        );
    }
}