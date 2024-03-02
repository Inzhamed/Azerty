import 'package:flutter/material.dart';
import 'package:wiro/component/appbar.dart';
import 'package:wiro/component/navbar.dart';
import 'package:wiro/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int level = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // this is the app bar
        appBar: CustomAppBar(
          score: 90,
          crowncount: 1,
          totalScore: 200,
          level: level.toString(),
          lotuscount: 1,
          flamecount: 1,
        ),
        //background color
        backgroundColor: const Color(0xfff3fafe),
        // the Body
        body: Stack(
          //stack to put the coulds on top of the buttons (i can't click the buttons under it)
          children: [
            SizedBox(
              //the buttons generator
              // this is to make the box take the whole screen
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                  //this is so we can view it and scroll
                  reverse: true, //idk why it's reversed
                  child: Column(
                    children: [
                      ...List.generate(
                        100,
                        (index) => MyBotton(
                            index: (100 - index),
                            onPressed: () {
                              if ((100 - index) <= level) {
                                if ((100 - index) == 2) {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          content: SingleChildScrollView(
                                            child: Container(
                                              width: double.maxFinite,
                                              constraints: const BoxConstraints(
                                                  maxHeight: 450),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  LevelLogoChange(index: index),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                        'You\'ve unlocked level. ',
                                                        style: TextStyle(
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff1C104E),
                                                        ),
                                                      ),
                                                      Text(
                                                        ((100 - index)
                                                            .toString()),
                                                        style: const TextStyle(
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff1C104E),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'You have successfully:',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 200,
                                                        child: ChallengesList(
                                                            index: index,
                                                            level: level,
                                                            icon1: Image.asset(
                                                              'assets/gain.png',
                                                              height: 20,
                                                              width: 20,
                                                            ),
                                                            text1:
                                                                "Gained 500 Lotus",
                                                            icon2: Image.asset(
                                                                'assets/runing.png',
                                                                height: 20,
                                                                width: 20),
                                                            text2:
                                                                "Walked +5000 steps",
                                                            icon3: Image.asset(
                                                                'assets/champ.png',
                                                                height: 20,
                                                                width: 20),
                                                            text3:
                                                                "Wrote 2 Articles"),
                                                      ),
                                                    ],
                                                  )

                                                  // Text((100 - index).toString())
                                                ],
                                              ),
                                            ),
                                          )));
                                }
                                if ((100 - index) == 3) {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          content: SingleChildScrollView(
                                            child: Container(
                                              width: double.maxFinite,
                                              constraints: const BoxConstraints(
                                                  maxHeight: 450),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  LevelLogoChange(index: index),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                        'You\'ve unlocked level. ',
                                                        style: TextStyle(
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff1C104E),
                                                        ),
                                                      ),
                                                      Text(
                                                        ((100 - index)
                                                            .toString()),
                                                        style: const TextStyle(
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff1C104E),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'You have successfully:',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 200,
                                                        child: ChallengesList(
                                                            index: index,
                                                            level: level,
                                                            icon1: Image.asset(
                                                              'assets/gain.png',
                                                              height: 20,
                                                              width: 20,
                                                            ),
                                                            text1:
                                                                "Gained 1000 Lotus",
                                                            icon2: Image.asset(
                                                                'assets/runing.png',
                                                                height: 20,
                                                                width: 20),
                                                            text2:
                                                                "Walked +10000 steps",
                                                            icon3: Image.asset(
                                                                'assets/champ.png',
                                                                height: 20,
                                                                width: 20),
                                                            text3:
                                                                "Wrote 5 Articles"),
                                                      ),
                                                    ],
                                                  )

                                                  // Text((100 - index).toString())
                                                ],
                                              ),
                                            ),
                                          )));
                                }
                              }
                              if ((100 - index) > level) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        content: SingleChildScrollView(
                                          child: Container(
                                            width: double.maxFinite,
                                            constraints: const BoxConstraints(
                                                maxHeight: 450),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                LevelLogoChange(index: index),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      'assets/Lock.png',
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                    const Text(
                                                      'level. ',
                                                      style: TextStyle(
                                                        fontSize: 21,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xffB2BAC7),
                                                      ),
                                                    ),
                                                    Text(
                                                      ((100 - index)
                                                          .toString()),
                                                      style: const TextStyle(
                                                        fontSize: 21,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xffB2BAC7),
                                                      ),
                                                    ),
                                                    const Text(' Locked',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xffB2BAC7),
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'To unlock this you have to:',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 17),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 200,
                                                      child: ChallengesList(
                                                          index: index,
                                                          level: level,
                                                          icon1: Image.asset(
                                                            'assets/gain.png',
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                          text1:
                                                              "Gained 500 Lotus",
                                                          icon2: Image.asset(
                                                              'assets/runing.png',
                                                              height: 20,
                                                              width: 20),
                                                          text2:
                                                              "Walked +5000 steps",
                                                          icon3: Image.asset(
                                                              'assets/champ.png',
                                                              height: 20,
                                                              width: 20),
                                                          text3:
                                                              "Wrote 2 Articles"),
                                                    ),
                                                  ],
                                                )

                                                // Text((100 - index).toString())
                                              ],
                                            ),
                                          ),
                                        )));
                                {}
                              }
                            }),
                      )
                    ],
                  )),
            ),
            Positioned(
                // top: ,
                // left: 50,
                child: Image.asset(
              'assets/cloudsTop.png',
            )),
            Positioned(
              bottom: -100,
              child: Image.asset('assets/cloudsBottom.png'),
            ),
          ],
        ));
  }
}

List<Widget> karim = [
  const Text("ana"),
  const Text("houwa "),
  const Text("nit"),
  const Text("nta "),
  const Text("hna"),
];

class MyBotton extends StatelessWidget {
  const MyBotton({
    super.key,
    required this.index,
    required this.onPressed,
  });
  final int index;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(37.72), boxShadow: [
        BoxShadow(
          offset: const Offset(0, 12),
          color: Colors.black.withOpacity(0.2),
        ),
      ]),
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
        right: (index ~/ 3 % 2 == 0 ? index % 3 * 50 : 0).toDouble(),
        left: (index ~/ 3 % 2 != 0 ? index % 3 * 50 : 0).toDouble(),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffDFE9F9),
            fixedSize: const Size(100, 80),
            elevation: 20,
            shadowColor: Colors.black.withOpacity(0.2)),
        // padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        // margin: EdgeInsets.only(
        //     top: 20,
        //     bottom: 20,
        //     right: index % 2 == 0 ? 20 : 0,
        //     left: index % 2 != 0 ? 20 : 0),
        // width: 120,
        // alignment: Alignment.center,
        child: Text(
          index.toString(),
          style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Color(0xff4221FE),
            letterSpacing: 1.3,
          ),
        ),
      ),
    );
  }
}

class ChallengesList extends StatefulWidget {
  const ChallengesList(
      {super.key,
      required this.index,
      required this.level,
      required this.icon1,
      required this.text1,
      required this.icon2,
      required this.text2,
      required this.icon3,
      required this.text3});

  final int index;
  final int level;
  final Image icon1;
  final Image icon2;
  final Image icon3;
  final String text1;
  final String text2;
  final String text3;

  @override
  State<ChallengesList> createState() => _ChallengesListState();
}

class _ChallengesListState extends State<ChallengesList> {
  bool enabled1 = true;
  bool enabled2 = true;
  bool enabled3 = true;
  // bool levelIsHigher = (100 - index) > level;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          // ((100 - index) > level)?
          leading: widget.icon1,
          title: Text(widget.text1,
              style: enabled1
                  ? const TextStyle(
                      fontFamily: 'Monserrat-Bold', fontWeight: FontWeight.w500)
                  : const TextStyle(
                      fontFamily: 'Monserrat-Bold',
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB2BAC7))),
          trailing: IconButton(
            icon: Icon(enabled1 ? Icons.check_box_outline_blank : Icons.check),
            onPressed: () {
              setState(() {
                enabled1 = !enabled1;
                // title:
                // Text(widget.text1,
                //     style: const TextStyle(
                //         fontFamily: 'Monserrat-Bold',
                //         fontWeight: FontWeight.w500,
                //         color: Color(0xffB2BAC7)));
              });
            },
          ),
        ),
        ListTile(
          leading: widget.icon2,
          title: Text(widget.text2,
              style: enabled2
                  ? const TextStyle(
                      fontFamily: 'Monserrat-Bold', fontWeight: FontWeight.w500)
                  : const TextStyle(
                      fontFamily: 'Monserrat-Bold',
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB2BAC7))),
          trailing: IconButton(
            icon: Icon(enabled2 ? Icons.check_box_outline_blank : Icons.check),
            onPressed: () {
              setState(() {
                enabled2 = !enabled2;
              });
            },
          ),
        ),
        ListTile(
          leading: widget.icon3,
          title: Text(widget.text3,
              style: enabled3
                  ? const TextStyle(
                      fontFamily: 'Monserrat-Bold', fontWeight: FontWeight.w500)
                  : const TextStyle(
                      fontFamily: 'Monserrat-Bold',
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB2BAC7))),
          trailing: IconButton(
            icon: Icon(enabled3 ? Icons.check_box_outline_blank : Icons.check),
            onPressed: () {
              setState(() {
                enabled3 = !enabled3;
              });
            },
          ),
        )
      ],
    );
  }
}

class LevelLogoChange extends StatefulWidget {
  const LevelLogoChange({super.key, required this.index});
  final int index;

  @override
  State<LevelLogoChange> createState() => LevelLogoChangeState();
}

class LevelLogoChangeState extends State<LevelLogoChange> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: grey, width: 12)),
          child: Text(
            (100 - widget.index).toString(),
            style: const TextStyle(
                fontSize: 60,
                color: Color(0xff1c114f),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
