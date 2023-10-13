import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/constants/constants.dart';
import 'package:meetrip/screens/home_screen.dart';
import 'package:meetrip/screens/onboarding_screens.dart';
import 'package:meetrip/widgets/custom_button.dart';
import 'package:meetrip/widgets/intro_page.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with TickerProviderStateMixin {
  PageController _pageController = PageController();
  int vindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.sizeOf(context).width / 11),
            child: Container(
              color: Colors.grey,
              child: Stack(
                // alignment: Alig,
                children: [
                  TextLiquidFill(
                    text: "MEETRIP",
                    boxBackgroundColor: Colors.white,
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
                    top: 25,
                    left: 85,
                    child: SizedBox(
                        height: 40,
                        child: Image.asset("assets/images/logo.png")),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 505,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  vindex = value;
                });
              },
              // pageSnapping: true,
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              allowImplicitScrolling: true,
              children: [
                IntroPages(
                    title: listIntros[0].title,
                    subtitle: listIntros[0].subTitle,
                    logo: listIntros[0].image1,
                    image1: listIntros[0].image2,
                    image2: listIntros[0].image3,
                    image3: listIntros[0].image4),
                IntroPages(
                    title: listIntros[1].title,
                    subtitle: listIntros[1].subTitle,
                    logo: listIntros[1].image1,
                    image1: listIntros[1].image2,
                    image2: listIntros[1].image3,
                    image3: listIntros[1].image4),
              ],
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Container(
            alignment: Alignment.center,
            // color: Colors.red,
            child: TabPageSelector(
              indicatorSize: 8,
              selectedColor: Colors.teal.shade700,
              controller:
                  TabController(length: 2, vsync: this, initialIndex: vindex),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          CutomButton(
              onPressed: vindex == 0
                  ? () {
                      _pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                    }
                  : () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
              txtColor: Colors.white,
              btnTxt: vindex == 1 ? "Get Started" : "Continue",
              bgColor: Colors.teal),
          const SizedBox(
            height: 15,
          ),
          CutomButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              txtColor: Colors.teal,
              btnTxt: "Sign in",
              bgColor: Colors.white.withOpacity(0.6)),
        ],
      )),
    );
  }
}
