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
          bottom: const TabBar(
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
        backgroundColor: const Color(0xfff7fdfe),
        body: TabBarView(
          children: <Widget>[
            Container(),
            Container(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'My Groups',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: -0.15,
                                  fontSize: 19,
                                ),
                              ),
                              Text(
                                'See all',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),

                              // Expanded(
                              //   child: ListView.builder(
                              //     itemCount: 10,
                              //     itemBuilder:
                              //         (BuildContext context, int index) {
                              //       return ListTile(
                              //         title: Group(),
                              //       );
                              //     },
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                                color: const Color(0xffe3f3fe),
                                child: SizedBox(
                                    height: 80,
                                    width: 200,
                                    child: Center(
                                      child: ListTile(
                                        leading: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                    "assets/run.png",
                                                  ),
                                                  fit: BoxFit.fill),
                                              // border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                        title: const Text(
                                          "Olympic runner ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ))),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 20),
                              child: Text("Suggested Groups",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600)),
                            ),
                            // Image.asset('assets/Runner_pic.png'),
                          ],
                        ),
                      ] +
                      widg
                          .map((e) => SizedBox(
                                height: 90,
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Card(
                                  color: Colors.white,
                                  child: ListTile(
                                    leading: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                "assets/suggested_groups.png",
                                              ),
                                              fit: BoxFit.fill),
                                          // border: Border.all(),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    title: Text(e["Title"]!),
                                    subtitle: Text(e["subtitle"]!),
                                  ),
                                ),
                              ))
                          .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Group extends StatelessWidget {
  const Group({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 179,
        height: 49,
        child: Row(children: [
          Image.asset("assets/Frame 34560.png"),
          Text("OLYMPIC RUNNER...")
        ]));
  }
}

List<Map<String, String>> widg = [
  {
    "asset": "assets/run.png",
    "Title": "Sober Squad",
    "subtitle": "506784 Members / 306384 Posts",
  },
  {
    "asset": "assets/run.png",
    "Title": "Sober Squad",
    "subtitle": "506784 Members / 306384 Posts",
  },
  {
    "asset": "assets/run.png",
    "Title": "Sober Squad",
    "subtitle": "506784 Members / 306384 Posts",
  },
];
