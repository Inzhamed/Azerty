import 'package:flutter/material.dart';
import 'package:wiro/Pages/Chat.dart';
import 'package:wiro/Pages/Home.dart';
import 'package:wiro/Pages/Leaderboard.dart';
import 'package:wiro/Pages/Login.dart';
import 'package:wiro/Pages/Profile.dart';
import 'package:wiro/Pages/Shop.dart';
import 'package:wiro/component/navbar.dart';
import 'package:wiro/component/prfs/prefer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static AppPreferences pref = AppPreferences();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          "/Home": (context) => const MyHomePage(),
          "/Login": (context) => const MyLoginPage(),
          "/SignUp":(context) => const MySignUpPage(),
        },
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final screens = [
    const HomePage(),
    const MyLeaderboardPage(),
    const MyChatPage(),
    const MyShopPage(),
    const MyProfilePage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    if (MyApp.pref.getToken() == false) {
      return const MyLoginPage();
    }
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: MyNavBar(
        index: index,
        onPressed: (int index) {
          setState(() => this.index = index);
        },
      ),
    );
  }
}
