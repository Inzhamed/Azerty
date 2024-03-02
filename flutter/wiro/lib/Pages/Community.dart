import 'package:flutter/material.dart';

const TextStyle customTextStyle = TextStyle(
  color: Color(0xff140562),
  fontSize: 14,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w700,
);

class CommunityClass extends StatelessWidget {
  const CommunityClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: TabBarExample()),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lotus',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Color(0xff140562),
              )),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: (Text("Explore", style: customTextStyle)),
              ),
              Tab(
                child: (Text("For You", style: customTextStyle)),
              ),
              Tab(
                child: (Text("Groups", style: customTextStyle)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 200,
                          child: const Center(
                              child: Text(
                            'Item 1',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                        Container(
                          width: 200,
                          child: const Center(
                              child: Text(
                            'Item 2',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                        Container(
                          width: 200,
                          child: const Center(
                              child: Text(
                            'Item 3',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                        Container(
                          width: 200,
                          color: Colors.purple[300],
                          child: const Center(
                              child: Text(
                            'Item 4',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Row(
                children: [],
              ),
            ),
            Center(
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
