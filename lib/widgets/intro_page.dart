import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPages extends StatelessWidget {
  const IntroPages(
      {super.key,
      // required this.index,
      required this.title,
      required this.subtitle,
      required this.logo,
      required this.image1,
      required this.image2,
      required this.image3});
  // final int index;
  final String title;
  final String subtitle;
  final String logo;
  final String image1;
  final String image2;
  final String image3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5, spreadRadius: 1, offset: Offset(4, 4))
                  ],
                  border: Border.all(
                      color: Colors.grey.shade100,
                      width: 5,
                      strokeAlign: BorderSide.strokeAlignOutside),
                  borderRadius: BorderRadius.circular(150),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(logo),
                  ),
                ),
                // child: Lottie.asset(
                //     fit: BoxFit.fitWidth, "assets/animations/almostthere.json"),
              ),
              Positioned(
                top: 140,
                left: 25,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5, spreadRadius: 1, offset: Offset(4, 4))
                    ],
                    border: Border.all(
                        color: Colors.grey.shade100,
                        width: 5,
                        strokeAlign: BorderSide.strokeAlignOutside),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image1)),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 260,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5, spreadRadius: 1, offset: Offset(4, 4))
                    ],
                    border: Border.all(
                        color: Colors.grey.shade100,
                        width: 5,
                        strokeAlign: BorderSide.strokeAlignOutside),
                    borderRadius: BorderRadius.circular(25),
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: AssetImage(image2),
                    // ),
                  ),
                  child: Lottie.asset(
                    height: 10,
                    image2,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 255,
                left: 250,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4))
                      ],
                      border: Border.all(
                          color: Colors.grey.shade100,
                          width: 5,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image3),
                      ),
                      color: Colors.white),
                  // child: Lottie.asset(
                  //     fit: BoxFit.contain,
                  //     "assets/animations/almostthere.json"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          width: 250,
          child: Text(
            subtitle,
            style: TextStyle(fontSize: 13, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
