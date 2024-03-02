// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';



List<NavigationDestination> loc = [
   
    const NavigationDestination(icon: Icon(Icons.home), label: ''),
    const NavigationDestination(icon: Icon(Icons.star), label: ''),
    const NavigationDestination(icon: Icon(Icons.chat), label: ''),
    const NavigationDestination(icon: Icon(Icons.shop), label: ''),
    const NavigationDestination(icon: Icon(Icons.person), label: ''),
  
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

