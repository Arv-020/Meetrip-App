import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/models/place_model.dart';
import 'package:meetrip/screens/jodh1_details.dart';
import 'package:meetrip/screens/jodh2_details.dart';
import 'package:meetrip/screens/jodh3_details.dart';
import 'package:meetrip/screens/jodh4_details.dart';
import 'package:meetrip/screens/jodh5_details.dart';
import 'package:meetrip/screens/jodh6_details.dart';
import 'package:meetrip/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

class JodhpurHomeScreen extends StatefulWidget {
  const JodhpurHomeScreen({
    super.key,
  });

  @override
  State<JodhpurHomeScreen> createState() => _JodhpurHomeScreenState();
}

class _JodhpurHomeScreenState extends State<JodhpurHomeScreen>
    with TickerProviderStateMixin {
  CarouselController carouselPageController = CarouselController();
  int pIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<PlaceModel> jodhpurPlaces = [
      PlaceModel(
        placeTitle: "Mehrangarh Fort",
        desc:
            "Mehrangarh Fort is one of the largest forts in India and the second largest in Rajasthan.",
        img: "assets/images/jodh1.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jodh1DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Umaid Bhawan Palace",
        desc:
            "Umaid Bhawan Palace is the most beautiful palace in Jodhpur and probably also in India.",
        img: "assets/images/jodh2.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jodh2DetialScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Lake Kaylana",
        desc:
            "Kaylana Lake is an artificial lake built by Pratap Singh in 1872, covering an area of ​​84 km2.",
        img: "assets/images/jodh3.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jodh3DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Jaswant Thada",
        desc:
            "Jaswant Thada is the resting place of the Maharaja Jaswant Singh II.",
        img: "assets/images/jodh4.jpeg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jodh4DetialScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Mandore Garden",
        desc:
            "Mandore Garden is a lovely place to explore in Jodhpur.  It is one of the oldest gardens in the city.",
        img: "assets/images/jodh5.JPG",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jodh5DetialScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Toorji Ka Jhalra",
        desc:
            "A wonderful example of the step Wells you can find throughout India.",
        img: "assets/images/jodh6.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jodh6DetialScreen()));
        },
      ),
    ];

    return DefaultTabController(
      length: jodhpurPlaces.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 1.3,
            child: CarouselSlider.builder(
                itemCount: jodhpurPlaces.length,
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
                              image: AssetImage(jodhpurPlaces[index].img),
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
                                    jodhpurPlaces[index].placeTitle,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    jodhpurPlaces[index].desc,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 15,
                                        color: Colors.grey.shade500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: InkWell(
                                      onTap: () {
                                        jodhpurPlaces[index]
                                            .onPressed!(context);
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
                "/${jodhpurPlaces.length}",
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
                length: jodhpurPlaces.length,
                vsync: this,
                initialIndex: pIndex),

            indicatorPadding: const EdgeInsets.all(5),
            // indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            labelStyle: const TextStyle(fontSize: 12),
            tabs: jodhpurPlaces
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
