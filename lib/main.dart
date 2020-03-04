import 'package:flutter/material.dart';

import 'icons/dogs_bar_icons.dart';
import 'screens/dogs_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green[350],
        fontFamily: 'JosefinSans',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Walk a Dog',
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () => {}, //to fill the onPressed event
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(DogsBarIcons.putwalk)),
              Tab(icon: Icon(Icons.account_circle)),
            ],
          ),
        ),
        body: DogsOverviewScreen(),
      ),
    );
  }
}
