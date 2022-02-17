//@dart=2.9
import 'package:flutter/material.dart';
import 'package:practical7/page1.dart';
import 'package:practical7/page2.dart';
import 'package:practical7/page3.dart';
import 'package:practical7/page4.dart';
import 'package:practical7/page5.dart';
import 'package:practical7/page6.dart';
import 'package:practical7/page7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final String url = 'https://www.google.com';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.looks_one_sharp)),
              Tab(
                icon: Icon(Icons.looks_two_sharp),
              ),
              Tab(
                icon: Icon(Icons.looks_3_sharp),
              ),
              Tab(
                icon: Icon(Icons.looks_4_sharp),
              ),
              Tab(
                icon: Icon(Icons.looks_5_sharp),
              ),
              Tab(
                icon: Icon(Icons.looks_6_sharp),
              ),
              Tab(
                icon: Icon(Icons.looks_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Page1(),
            Page2(),
            Page3(),
            Page4(widget.url),
            Page5(),
            Page6(),
            Page7()
          ],
        ),
      ),
    );
  }
}
