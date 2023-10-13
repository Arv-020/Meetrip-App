import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/models/place_model.dart';
import 'package:meetrip/screens/ajm1_details.dart';
import 'package:meetrip/screens/ajm2_details.dart';
import 'package:unicons/unicons.dart';

import 'ajm3_details.dart';
import 'ajm4_details.dart';
import 'ajm5_details.dart';

class AjmerHomeScreen extends StatefulWidget {
  const AjmerHomeScreen({
    super.key,
  });

  @override
  State<AjmerHomeScreen> createState() => _AjmerHomeScreenState();
}

class _AjmerHomeScreenState extends State<AjmerHomeScreen>
    with TickerProviderStateMixin {
  CarouselController carouselPageController = CarouselController();
  int pIndex = 0;
  List<PlaceModel> ajmerPlaces = [
    PlaceModel(
      placeTitle: "Dargah Shariff",
      desc:
          "Situated in Rajasthan, the Dargah Sharif is the shrine of Khwaja Moinuddin Chisti, a revered Sufi saint.",
      img: "assets/images/ajm1.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Ajm1DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Nasiyan Jain Temple",
      desc: "Amazing depection of gold model of Adinatha.",
      img: "assets/images/ajm2.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Ajm2DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Ana Sagar Lake",
      desc:
          "The lake is vast and the water seems to be very pure with home to various species of ducks and other small water birds.",
      img: "assets/images/ajm3.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Ajm3DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Rangji Temple",
      desc:
          "This temple has spacious courtyard and darshan timings. The temple has many pillars having marble carvings.",
      img: "assets/images/ajm4.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Ajm4DetailScreen()));
      },
    ),
    PlaceModel(
      placeTitle: "Birla City Water Park",
      desc:
          "Birla city water park has lot to offer- Be it all the slides & rides Bathing and attractive Rain Dance on Music Lunch.",
      img: "assets/images/ajm5.jpg",
      onPressed: (context) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Ajm5DetailScreen()));
      },
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ajmerPlaces.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 1.3,
            child: CarouselSlider.builder(
                itemCount: ajmerPlaces.length,
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
                              image: AssetImage(ajmerPlaces[index].img),
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
                                    ajmerPlaces[index].placeTitle,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    ajmerPlaces[index].desc,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 15,
                                        color: Colors.grey.shade500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        ajmerPlaces[index].onPressed!(context);
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
                "/${ajmerPlaces.length}",
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
                length: ajmerPlaces.length, vsync: this, initialIndex: pIndex),

            indicatorPadding: const EdgeInsets.all(5),
            // indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            labelStyle: const TextStyle(fontSize: 12),
            tabs: ajmerPlaces
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
