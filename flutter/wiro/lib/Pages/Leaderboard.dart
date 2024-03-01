import 'package:flutter/material.dart';

class MyLeaderboardPage extends StatelessWidget {
  const MyLeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('My Leaderboard'),
          ],
        ),
      ),
    );
  }
}
