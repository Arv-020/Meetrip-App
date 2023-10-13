import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:unicons/unicons.dart';

class Jaisal3DetailScreen extends StatelessWidget {
  const Jaisal3DetailScreen({super.key});

  final String placeName = "Longewala War Memorial";

  final String content =
      "The Battle of Longewala (4–7 December 1971) was one of the first major engagements in the western sector during the Indo-Pakistani War of 1971, fought between assaulting Pakistani forces and Indian defenders at the Indian border post of Longewala, in the Thar Desert of Rajasthan. The battle was fought between 120 Indian soldiers accompanied by four Hunter fighter aircraft and 2,000–3,000 Pakistani soldiers accompanied by 30–40 tanks.A company of the Indian Army's 23rd Battalion, Punjab Regiment, commanded by Major Kuldip Singh Chandpuri, was left with the choice of either attempting to hold out until reinforced, or fleeing on foot from a Pakistani motorized infantry force.[11] Choosing the former, Chandpuri ensured that all his assets were correctly deployed and made the best use of his strong defensive position, as well as weaknesses created by errors in enemy tactics. He was also fortunate that an Indian Air Force forward air controller was able to secure and direct aircraft in support of the post's defence until reinforcements arrived six hours later.[12]The Pakistani commanders made several questionable decisions, including a failure of their strategic intelligence to foresee the availability of Indian fighter-bombers in the Longewala area, exercising operational mobility with little or no route reconnaissance, and conducting a tactical frontal assault with no engineer reconnaissance.[13][12] That led to the Pakistani brigade group being left extremely vulnerable to air attack and vehicles becoming bogged in terrain unsuitable for the movement of armoured vehicles, as they tried to deploy off a single track and were more susceptible to enemy fire since they used external fuel storage in tactical combat and attempted to execute a night attack over unfamiliar terrain, and infantry was surprised by obstacles to troop movement, which caused confusion and stalling the attack during the crucial hours of darkness, when the assaulting infantry still had a measure of concealment from Indian small arms and infantry support weapon fire.";

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/jaisal3.jpg",
      "assets/images/jaisal3-2.jpg",
      "assets/images/jaisal3-3.jpg"
    ];
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   child: Icon(
      //     UniconsLine.heart_alt,
      //     color: Colors.red,
      //     size: 30,
      //     fill: 1,
      //   ),
      // ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height / 2.4,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   image: AssetImage("assets/images/jodh1.jpg"),
                      // ),
                      ),
                  child: CarouselSlider.builder(
                      itemCount: images.length,
                      itemBuilder: (context, index, viewIndex) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(images[index]),
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          height: double.maxFinite)),
                ),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black.withOpacity(0.4),
                              border: Border.all(color: Colors.teal)),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Center(
                                child: Icon(
                              UniconsLine.arrow_left,
                              color: Colors.white,
                            )),
                          )),
                      // Spacer(),
                      const Icon(
                        UniconsLine.search,
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.sizeOf(context).height / 6,
                        horizontal: 16),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          UniconsLine.arrow_left,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          UniconsLine.arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 500,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        Text(
                          placeName,
                          style: GoogleFonts.asapCondensed(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        ReadMoreText(
                          content,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: "Show More",
                          trimExpandedText: "Show Less",
                          trimLines: 10,
                          moreStyle: GoogleFonts.asapCondensed(
                              color: Colors.teal,
                              decoration: TextDecoration.underline),
                          lessStyle: GoogleFonts.asapCondensed(
                              decoration: TextDecoration.underline,
                              color: Colors.teal),
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.asapCondensed(
                              height: 1.3,
                              wordSpacing: 1,
                              // wordSpacing: 10,

                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Entertainment",
                              style: GoogleFonts.asapCondensed(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            Icon(UniconsLine.arrow_right)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        side: BorderSide(
                                          color: Colors.grey,
                                          width: 0.4,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // height: ,
                                            decoration: BoxDecoration(
                                                color:
                                                    Colors.red.withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Icon(
                                                  UniconsLine.eye,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Attractions",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        side: BorderSide(
                                          color: Colors.grey,
                                          width: 0.4,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // height: ,
                                            decoration: BoxDecoration(
                                                color: Colors.blue
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Icon(
                                                  UniconsLine.check,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "To Do",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        side: BorderSide(
                                          color: Colors.grey,
                                          width: 0.4,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // height: ,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow
                                                    .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Icon(UniconsLine.fire,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Experiencies",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        side: BorderSide(
                                          color: Colors.grey,
                                          width: 0.4,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // height: ,
                                            decoration: BoxDecoration(
                                                color: Colors.orange
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Icon(
                                                  UniconsLine.mountains,
                                                  color: Colors.orange,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Places",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        side: BorderSide(
                                          color: Colors.grey,
                                          width: 0.4,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // height: ,
                                            decoration: BoxDecoration(
                                                color: Colors.purple
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Icon(
                                                  UniconsLine.bed,
                                                  color: Colors.purple,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Hotels",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        side: BorderSide(
                                          color: Colors.grey,
                                          width: 0.4,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // height: ,
                                            decoration: BoxDecoration(
                                                color: Colors.pink
                                                    .withOpacity(0.1),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Icon(Icons.dinner_dining,
                                                    color: Colors.pink),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Restaurants",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        side: BorderSide(
                                          color: Colors.grey,
                                          width: 0.4,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // height: ,
                                            decoration: BoxDecoration(
                                                color: Colors.green
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Center(
                                                child: Icon(
                                                    UniconsLine.glass_martini,
                                                    color: Colors.teal),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Bars",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ali: Alignment.center,
              top: MediaQuery.sizeOf(context).height / 2.75,
              left: MediaQuery.sizeOf(context).width / 2.35,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      const BoxShadow(
                        spreadRadius: 0.1,
                        blurRadius: 1,
                        offset: Offset(0, 0),
                      )
                    ]),
                child: const Center(
                  child: Icon(
                    UniconsLine.heart,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
