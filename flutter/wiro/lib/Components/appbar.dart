import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainAppBar(
//       score:
//           50, // Here you add the score (you add for each challenge done like +20 +50)
//       totalScore:
//           200, // The total score or the limit, it changes depends on the level -or not, see for yourself-
//       level: '09',
//       lotuscount: 4,
//       flamecount: 5,
//       crowncount:
//           1 // used a string because an int would cause a problem i can't type 01 and we should respect the ui
//       ));
// }

class MainAppBar extends StatelessWidget {
  const MainAppBar(
      {super.key,
      required this.score,
      required this.totalScore,
      required this.level,
      required this.lotuscount,
      required this.flamecount,
      required this.crowncount});

  final int score;
  final int totalScore;
  final String level;
  final int lotuscount;
  final int flamecount;
  final int crowncount;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(116), // Set the preferred height of the app bar
          child: AppBar(
              toolbarHeight: 116,
              title: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 17),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Level $level',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xff140562)),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '$score/',
                              style: TextStyle(
                                  color: Color(0xff140562),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat'),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '$totalScore exp',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Color(0xff140562)
                                            .withOpacity(0.65))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7),
                    ProgressBar(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 16,
                        progress: score / totalScore),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 31),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          reward(
                              imageName: 'assets/noun-lotus-6636109 2.png',
                              counter: lotuscount,
                              rewardColor: Color(0xffFF4B4B)),
                          reward(
                              imageName: 'assets/Icon.png',
                              counter: flamecount,
                              rewardColor: Color(0xffFF9600)),
                          reward(
                              imageName: 'assets/Vectors.png',
                              counter: crowncount,
                              rewardColor: Color(0xffFF9600))
                        ],
                      ),
                    ) // for exemple a score of 20/200 = 0.1 (or 10 %)
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar(
      {super.key,
      required this.width,
      required this.height,
      required this.progress});
  final double width;
  final double height;
  final double progress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Color(0xff4221FE).withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Container(
            width: width *
                progress, // We take the intial width of the progress bar * the progress, for example the width is 100px, the progress is 10% so 10 pixel are colorised
            height: height,
            decoration: BoxDecoration(
                color: Color(0xff4221FE),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}

class reward extends StatelessWidget {
  reward(
      {super.key,
      required this.imageName,
      required this.counter,
      required this.rewardColor});
  final String imageName;
  final int counter;
  final Color rewardColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imageName),
        SizedBox(
          width: 8,
        ),
        Text("$counter",
            style: TextStyle(
                fontSize: 14, color: rewardColor, fontFamily: 'Montserrat'))
      ],
    );
  }
}
