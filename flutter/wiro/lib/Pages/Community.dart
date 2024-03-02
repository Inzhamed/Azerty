import 'package:flutter/material.dart';

class CommunityClass extends StatelessWidget {
  const CommunityClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("debug"),
        ),
      ),
    );
  }
}

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lotus'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Explore"),
              Tab(text: "For You"),
              Tab(text: "Groups"),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
