import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/models/place_model.dart';
import 'package:meetrip/screens/jai1_details.dart';
import 'package:meetrip/screens/jai5_details.dart';
import 'package:meetrip/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

import 'jai2_details.dart';
import 'jai3_details.dart';
import 'jai4_details.dart';

class JaipurHomeScreen extends StatefulWidget {
  const JaipurHomeScreen({
    super.key,
  });

  @override
  State<JaipurHomeScreen> createState() => _JaipurHomeScreenState();
}

class _JaipurHomeScreenState extends State<JaipurHomeScreen>
    with TickerProviderStateMixin {
  CarouselController carouselPageController = CarouselController();
  int pIndex = 0;
  List<PlaceModel> jaipurPlaces = [
    PlaceModel(
      placeTitle: "Amber Palace",
      desc:
          "Constructed by Raja Man Singh I in the last decade of the 16th c and completed by Mirza Raja Jai Singh.",
      img: "assets/images/jai1.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Jai1DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Jantar Mantar",
      desc:
          "The site is an outdoor collection of ancient astronomical instruments, including the largest sundial in the world.",
      img: "assets/images/jai2.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Jai2DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Hawa Mahal",
      desc:
          "this 5 storey palace was consctruted in 1799 by maharaja sawai pratap singh.",
      img: "assets/images/jai3.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Jai3DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Sheesh Mahal",
      desc:
          "One of the true highlights of visiting Amber Palace was our stroll through the Sheesh Mahal Hall of Mirrors.",
      img: "assets/images/jai4.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Jai4DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Birla Mandir Temple",
      desc:
          "The three huge domes of the temple represent three different approaches to the religion.",
      img: "assets/images/jai5.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Jai5DetailScreen()));
      },
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: jaipurPlaces.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 1.3,
            child: CarouselSlider.builder(
                itemCount: jaipurPlaces.length,
                itemBuilder: (context, index, viewIndex) {
                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            spreadRadius: 0.5,
                            blurRadius: 10,
                            offset: Offset(4, 4))
                      ],
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.primaries[
                      //     Random().nextInt(Colors.primaries.length - 1)],
                    ),
                    height: MediaQuery.sizeOf(context).width * 0.9,
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    child: Column(children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(jaipurPlaces[index].img),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20),
                                // top: Radius.elliptical(10, 15),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                // BoxShadow(
                                //     spreadRadius: 1,
                                //     blurRadius: 100,
                                //     offset: Offset(0, -40))
                              ]),
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 16, bottom: 0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    jaipurPlaces[index].placeTitle,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    jaipurPlaces[index].desc,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 15,
                                        color: Colors.grey.shade500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: InkWell(
                                      onTap: () {
                                        jaipurPlaces[index].onPressed!(context);
                                      },
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Discover Place",
                                            style: GoogleFonts.asapCondensed(
                                                color: Colors.teal),
                                          ),
                                          // const SizedBox(
                                          //   width: 5,
                                          // ),
                                          const Icon(
                                            UniconsLine.arrow_right,
                                            color: Colors.teal,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ]),
                  );
                },
                carouselController: carouselPageController,
                options: CarouselOptions(
                    animateToClosest: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        pIndex = index;
                      });
                    },
                    height: MediaQuery.sizeOf(context).width * 1.2,
                    viewportFraction: 0.78,
                    enlargeCenterPage: true,
                    scrollPhysics: const BouncingScrollPhysics())),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${pIndex + 1}",
                style:
                    GoogleFonts.asapCondensed(fontSize: 25, color: Colors.grey),
              ),
              Text(
                "/${jaipurPlaces.length}",
                style: GoogleFonts.asapCondensed(color: Colors.grey),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 10,
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          TabBar(
            onTap: (value) {
              carouselPageController.animateToPage(value);
            },

            controller: TabController(
                length: jaipurPlaces.length, vsync: this, initialIndex: pIndex),

            indicatorPadding: const EdgeInsets.all(5),
            // indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            labelStyle: const TextStyle(fontSize: 12),
            tabs: jaipurPlaces
                .map(
                  (e) => Tab(
                    height: 25,
                    text: e.placeTitle,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
