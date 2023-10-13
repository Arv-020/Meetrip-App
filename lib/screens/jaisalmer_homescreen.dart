import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/models/place_model.dart';
import 'package:unicons/unicons.dart';

import 'jaisal1_details.dart';
import 'jaisal2_details.dart';
import 'jaisal3_details.dart';
import 'jaisal4_details.dart';

class JaisalmerHomeScreen extends StatefulWidget {
  const JaisalmerHomeScreen({
    super.key,
  });

  @override
  State<JaisalmerHomeScreen> createState() => _JaisalmerHomeScreenState();
}

class _JaisalmerHomeScreenState extends State<JaisalmerHomeScreen>
    with TickerProviderStateMixin {
  CarouselController carouselPageController = CarouselController();
  int pIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<PlaceModel> jaisalmerPlaces = [
      PlaceModel(
        placeTitle: "Jaisalmer Fort",
        desc:
            "A huge, walled, live, golden in color, sitting high on hill, with an overwhelming view, grandeur and magnificence spilling fort",
        img: "assets/images/jaisal1.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jaisal1DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Tanot Mata Temple",
        desc:
            "Tanot Mata temple is approx. 120Km from Jaisalmer Town. . The Temple is well maintained by BSF People and have a lot of positive vibes.",
        img: "assets/images/jaisal2.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jaisal2DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Longewala War Memorial",
        desc:
            "Longewala Yudh-sthal or battlefield and war memorial is most important and must visit spot for everyone who visit Jaisalmer.",
        img: "assets/images/jaisal3.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jaisal3DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Kotahri's Patwaon-Ki-Haveli",
        desc:
            "This place is a must visit when in Jaisalmer. Lot of interesting artifacts, old appliances, beautiful carvings and much more.",
        img: "assets/images/jaisal4.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Jaisal4DetailScreen()));
        },
      ),
    ];

    return DefaultTabController(
      length: jaisalmerPlaces.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 1.3,
            child: CarouselSlider.builder(
                itemCount: jaisalmerPlaces.length,
                itemBuilder: (context, index, viewIndex) {
                  return GestureDetector(
                    onTap: () {
                      jaisalmerPlaces[index].onPressed!(context);
                    },
                    child: Container(
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
                                image: AssetImage(jaisalmerPlaces[index].img),
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
                                      jaisalmerPlaces[index].placeTitle,
                                      style: GoogleFonts.asapCondensed(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      jaisalmerPlaces[index].desc,
                                      style: GoogleFonts.asapCondensed(
                                          fontSize: 15,
                                          color: Colors.grey.shade500),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
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
                                          Icon(
                                            UniconsLine.arrow_right,
                                            color: Colors.teal,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ]),
                    ),
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
                "/${jaisalmerPlaces.length}",
                style: GoogleFonts.asapCondensed(color: Colors.grey),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                length: jaisalmerPlaces.length,
                vsync: this,
                initialIndex: pIndex),

            indicatorPadding: EdgeInsets.all(5),
            // indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 12),
            tabs: jaisalmerPlaces
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
