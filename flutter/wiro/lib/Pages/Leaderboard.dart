import 'package:flutter/material.dart';
import 'package:wiro/schema/user.dart';

class MyLeaderboardPage extends StatefulWidget {
  const MyLeaderboardPage({super.key});

  @override
  State<MyLeaderboardPage> createState() => _MyLeaderboardPageState();
}

class _MyLeaderboardPageState extends State<MyLeaderboardPage> {
  List<User> sortedUsers = users.toList()
    ..sort((a, b) => b.score.compareTo(a.score));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2FAFF),
        appBar: AppBar(
          backgroundColor: Color(0xffF2FAFF),
          toolbarHeight: 116,
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Leaderboard',
                  style: TextStyle(
                    color: Color(0xFF140562),
                    fontSize: 32,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.24,
                  ),
                ),
              )
            ],
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
            child: Column(
              children: [
                Text(
                  'Ranks are based on streaks and total of Lotuses possible',
                  style: TextStyle(
                    color: Color(0xFF140562),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23),
                  child: Column(
                    children: [
                      SizedBox(height: 45),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rank",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF140562)),
                          ),
                          Text(
                            "High Score",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                color: Color(0xFF140562)),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: ListView(
                          children: sortedUsers.map((e) {
                            final index = sortedUsers.indexOf(e);
                            return Rank(
                              index: index,
                              score: e.score,
                              name: e.username,
                            );
                          }).toList(), // Sorting the list of Rank widgets
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class Rank extends StatelessWidget {
  const Rank(
      {super.key,
      required this.index,
      required this.score,
      required this.name});
  final int index;
  final int score;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          index <= 2
              ? Image.asset(index == 0
                  ? "assets/Vectors(1).png"
                  : index == 1
                      ? "assets/Vectors(2).png"
                      : "assets/Vectors(3).png")
              : Text((index + 1).toString()),
          SizedBox(width: 11),
          Text(name),
          Spacer(),
          Text(score.toString())
        ],
      ),
    );
  }
}

List<User> users = [
  User(username: "Nayla", id: 1, score: 231),
  User(username: "Nayla", id: 12, score: 123),
  User(username: "Nayla", id: 11, score: 233),
  User(username: "Nayla", id: 31, score: 44),
  User(username: "Nayla", id: 41, score: 255),
  User(username: "Nayla", id: 51, score: 56),
  User(username: "Nayla", id: 61, score: 67),
  User(username: "Nayla", id: 71, score: 888),
];
