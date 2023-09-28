import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:meetrip/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const IntroScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 120,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  TextLiquidFill(
                    text: "MEETRIP",
                    boxBackgroundColor: Colors.teal.shade700,
                    waveColor: Colors.teal.shade100,
                    textStyle: GoogleFonts.asapCondensed(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    boxHeight: 100,
                    loadDuration: const Duration(seconds: 4),
                    waveDuration: const Duration(seconds: 4),
                    loadUntil: 0.8,
                  ),
                  Positioned(
                    top: 20,
                    child: SizedBox(
                        height: 40,
                        child: Image.asset("assets/images/logo.png")),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            SizedBox(
              // color: Colors.grey,
              height: 300,
              child: Stack(
                // alignment: Alignment.topCenter,
                fit: StackFit.loose,
                children: [
                  Lottie.asset(
                      alignment: Alignment.bottomCenter,
                      "assets/animations/anTravel.json"),
                  Positioned(
                    top: MediaQuery.sizeOf(context).width / 1.7,
                    left: MediaQuery.sizeOf(context).width / 4,
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Lottie.asset(
                          alignment: Alignment.topCenter,
                          "assets/animations/anLoading.json"),
                    ),
                  )
                ],
              ),
            ),

            // RiveAnimation.network(
            //     antialiasing: true,
            //     fit: BoxFit.cover,
            //     "https://public.rive.app/community/runtime-files/2889-6038-help.riv"),
            // Positioned(
            //   top: 200,
            //   child: SizedBox(
            //     height: 200,
            //     width: 200,
            //     child: RiveAnimation.network(
            //         antialiasing: true,
            //         fit: BoxFit.fitWidth,
            //         "https://public.rive.app/community/runtime-files/3366-7078-material-loader.riv"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
