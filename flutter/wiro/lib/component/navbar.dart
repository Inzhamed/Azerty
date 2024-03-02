// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

List<NavigationDestination> loc = [
  NavigationDestination(
      icon: Image.asset(
        "assets/Home.png",
        width: 32,
        height: 32,
      ),
      label: ''),
  NavigationDestination(
      icon: Image.asset(
        'assets/LeaderBoard.png',
        width: 32,
        height: 32,
      ),
      label: ''),
  NavigationDestination(
      icon: Image.asset('assets/Chat.png', width: 32, height: 32), label: ''),
  NavigationDestination(
      icon: Image.asset('assets/Shop.png', width: 32, height: 32), label: ''),
  NavigationDestination(
      icon: Image.asset('assets/Profile.png', width: 32, height: 32),
      label: ''),
];

class MyNavBar extends StatelessWidget {
  const MyNavBar({
    super.key,
    required this.onPressed,
    required this.index,
  });
  final void Function(int)? onPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 70,
        destinations: loc,
        selectedIndex: index,
        onDestinationSelected: onPressed);
  }
}
