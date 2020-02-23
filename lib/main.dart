import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                color: Colors.yellow,
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
                color: Colors.black,
              ),
            ]),
            backgroundColor: Colors.black,
            bottomNavigationBar: BottomAppBar(
              color: Colors.white,
              child: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.search)),
                  Tab(icon: Icon(Icons.camera)),
                  Tab(icon: Icon(Icons.favorite)),
                  Tab(icon: Icon(Icons.account_box)),
                ],
                labelColor: Colors.red,
                labelPadding: EdgeInsets.all(4.0),
                unselectedLabelColor: Colors.blue,
                indicatorColor: Colors.transparent,
              ),
            ),
          ),
        ));
  }
}
