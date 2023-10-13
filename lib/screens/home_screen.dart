import 'dart:math';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flaticon/flaticon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/screens/jaipur_homescreen.dart';
import 'package:meetrip/screens/jaisalmer_homescreen.dart';
import 'package:meetrip/screens/jodphur_homescreen.dart';
import 'package:meetrip/screens/udaipur_homescreen.dart';
import 'package:unicons/unicons.dart';

import 'ajmer_homescreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bgImage.jpg"))),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    // Colors.grey.withOpacity(0.25),
                    Colors.grey.withOpacity(0.05),
                    Colors.grey.withOpacity(0.01),
                  ])),
            ),
            SafeArea(
              child: Column(
                // mainAxisAlignment: Mai1nAxisAlignment.c,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 35,
                          offset: Offset(0, 4),
                        )
                      ],
                      color: Color.fromARGB(255, 106, 111, 114),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Container(
                          // width: ,
                          color: Colors.grey.shade100,
                          child: TextLiquidFill(
                            text: "MEETRIP",
                            boxBackgroundColor:
                                const Color.fromARGB(255, 106, 111, 114),
                            waveColor: Colors.teal,
                            textStyle: GoogleFonts.asapCondensed(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            boxHeight: 50,
                            boxWidth: 200,
                            loadDuration: const Duration(seconds: 4),
                            waveDuration: const Duration(seconds: 4),
                            loadUntil: 0.8,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              UniconsLine.search,
                              size: 28,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TabBar(
                      indicatorColor: Colors.transparent,
                      // indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Text("Jodhpur"),
                        ),
                        Tab(
                          child: Text("Jaipur"),
                        ),
                        Tab(
                          child: Text("Ajmer"),
                        ),
                        Tab(
                          child: Text("Udaipur"),
                        ),
                        Tab(
                          child: Text("Jaisalmer"),
                        ),
                      ]),
                  const Expanded(
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        JodhpurHomeScreen(),
                        JaipurHomeScreen(),
                        AjmerHomeScreen(),
                        UdaipurHomeScreen(),
                        JaisalmerHomeScreen(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
