// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 31, 30, 30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 8,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Color.fromARGB(255, 243, 96, 11),
            size: 28,
          ),
           Icon(
            Icons.favorite,
            color: Colors.white,
            size: 28,
          ),
           Icon(
            Icons.notifications,
            color: Colors.white,
            size: 28,
          ),
           Icon(
            Icons.person,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
    );
  }
}
