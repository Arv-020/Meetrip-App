import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/models/place_model.dart';
import 'package:meetrip/screens/udai1_details.dart';
import 'package:meetrip/screens/udai2_details.dart';
import 'package:meetrip/screens/udai3_details.dart';
import 'package:meetrip/screens/udai4_details.dart';
import 'package:meetrip/screens/udai5_details.dart';
import 'package:unicons/unicons.dart';

class UdaipurHomeScreen extends StatefulWidget {
  const UdaipurHomeScreen({
    super.key,
  });

  @override
  State<UdaipurHomeScreen> createState() => _UdaipurHomeScreenState();
}

class _UdaipurHomeScreenState extends State<UdaipurHomeScreen>
    with TickerProviderStateMixin {
  CarouselController carouselPageController = CarouselController();
  int pIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<PlaceModel> udaipurPlaces = [
      PlaceModel(
        placeTitle: "Lake Pichola",
        desc:
            "Evening is the best time to visit Lake Pichola. The boat ride soothes your soul by offering mesmerizing views of the sunset. ",
        img: "assets/images/udai1.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Udai1DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "City Palace",
        desc:
            "If you are someone who admires the heritage of Rajasthan, this is a definite place to visit.",
        img: "assets/images/udai2.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Udai2DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Shri Ekling JI Temple",
        desc:
            "Peaceful temple and old architecture well maintained. Clean and tidy. And photography is not allowed.",
        img: "assets/images/udai3.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Udai3DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Jagdish Temple",
        desc:
            "This is definitely one of the more impressive Hindu temples,Fantastic architecture. Very old temple.",
        img: "assets/images/udai4.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Udai4DetailScreen()));
        },
      ),
      PlaceModel(
        placeTitle: "Nexus Celebration Mall",
        desc:
            "One of the good malls in the city. Shopping zone for all branded items. Movies are an option as well and kid activities keep the young ones engaged.",
        img: "assets/images/udai5.jpg",
        onPressed: (context) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Udai5DetailScreen()));
        },
      ),
    ];

    return DefaultTabController(
      length: udaipurPlaces.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 1.3,
            child: CarouselSlider.builder(
                itemCount: udaipurPlaces.length,
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
                              image: AssetImage(udaipurPlaces[index].img),
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
                                    udaipurPlaces[index].placeTitle,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    udaipurPlaces[index].desc,
                                    style: GoogleFonts.asapCondensed(
                                        fontSize: 15,
                                        color: Colors.grey.shade500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: InkWell(
                                      onTap: () {
                                        udaipurPlaces[index]
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
                "/${udaipurPlaces.length}",
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
                length: udaipurPlaces.length,
                vsync: this,
                initialIndex: pIndex),

            indicatorPadding: const EdgeInsets.all(5),
            // indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.transparent,
            isScrollable: true,
            labelStyle: const TextStyle(fontSize: 12),
            tabs: udaipurPlaces
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
