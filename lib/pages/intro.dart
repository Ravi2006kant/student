import 'dart:async';

import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  var op = 1.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        op = 0;
      });
    });
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
            ),
          ),
          child: AnimatedOpacity(
            opacity: op,
            curve: Curves.decelerate,
            duration: Duration(milliseconds: 1000),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.menu_book, color: Colors.white, size: 50),
                SizedBox(height: 10),
                Text(
                  "STUDENT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Stay Productive Eveyday.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                CircularProgressIndicator(color: Colors.white, trackGap: 0.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
