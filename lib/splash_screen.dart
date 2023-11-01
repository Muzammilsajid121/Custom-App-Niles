import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:niles_custom_app/home_screen.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() async {
    Timer(const Duration(seconds: 3), () {
      navigateToSplashScreen();
    });
  }

  void navigateToSplashScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => Home(
               
              )),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromARGB(255, 97, 16, 189),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const  Text(
                "Teen patti master",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
              LottieBuilder.asset(
                "assets/loading.json",
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
