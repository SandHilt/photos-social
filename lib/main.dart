import 'package:flutter/material.dart';

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
