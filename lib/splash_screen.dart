import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_four_hour_work_week_book/pv_quotes_text.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => PageViewQuotesText()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/book background image.jpg',
                    ),
                    fit: BoxFit.cover,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'images/trims feriss.jpg',
                      width: 160,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20),
                    child: Text(
                      'Many a false step was made by standing still.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
