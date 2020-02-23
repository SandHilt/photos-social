import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final double sizeIcon = 32.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.yellow,
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Photos Social"),
              backgroundColor: Colors.black,
            ),
            body: TabBarView(children: [
              Container(
                color: Colors.black,
                child: Boxer(),
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.lightGreen,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.indigo,
              ),
            ]),
            backgroundColor: Colors.black,
            bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              child: TabBar(
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.home,
                    size: sizeIcon,
                  )),
                  Tab(icon: Icon(Icons.search, size: sizeIcon)),
                  Tab(icon: Icon(Icons.camera, size: sizeIcon)),
                  Tab(icon: Icon(Icons.favorite, size: sizeIcon)),
                  Tab(icon: Icon(Icons.account_box, size: sizeIcon)),
                ],
                labelColor: Colors.red,
                unselectedLabelColor: Colors.blue,
                indicatorColor: Colors.transparent,
              ),
            ),
          ),
        ));
  }
}

class BoxerState extends State<Boxer> {
  final _boxers = <String>[];
  // final _save = <int>[];

  Widget _buildBox(String url) {
    final _name = WordPair.random().asPascalCase;
    final _local = WordPair.random().asCamelCase;

    return SizedBox(
      child: Card(
        elevation: 5,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
            title: Text(_name),
            subtitle: Text(_local),
            trailing: Icon(Icons.menu),
            leading: Icon(Icons.account_circle),
          ),
          Image.network(url),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: null,
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.save),
                onPressed: null,
              ),
            ],
          ),
          ListTile(
            title: Text(
              "Descricao",
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return Divider();
      final index = i ~/ 2;
      if (index >= _boxers.length) {
        for (int i = 0 + index; i < 10 + index; i++) {
          _boxers.add("https://placeimg.com/640/480/animals/$i");
        }
      }
      return _buildBox(_boxers[index]);
    });
  }
}

class Boxer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BoxerState();
}
