import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:unicons/unicons.dart';

class Ajm2DetailScreen extends StatelessWidget {
  const Ajm2DetailScreen({super.key});

  final String placeName = "Nasiyan Jain Temple";

  final String content =
      "Ajmer's main attraction is - for the Jainas - the prominently situated Nasiayan Digambara Temple, or rather the two-storied Svarana Nagara Hall behind the temple, better known as the Museum. Both the temple and the museum were built and are still owned by the Soni family of Ajmer. The temple, dedicated to Rishabha or Adinatha in 1865, was constructed of red sandstone in a matter of a few years, but it took twenty-five years, from 1870 to 1895, to fashion - by artisans at Jaipur - the thousands of individual parts required to assemble a three-dimensional replica of the story of Rishabha in accordance with an old manuscript by Acharya Jinasena. The thought to have such a three-dimensional model for educational purposes occurred to Seth Moolchand Soni, who was born in 1830, only after the completion of the temple. His death in 1891 prevented him from seeing his ambitious work in its finished state. In many Jaina temples one sees painted or figurative representations of the 'five auspicious events' (pancha-kalyanak) in the life of every Tirthankara: conception, birth, renunciation, enlightenment, and salvation (moksha or nirvana). The one at Ajmer, now over a hundred years old, is by far the largest and most artistic plastic representation of that much-loved mythological narrative. A specially designed hall of 24.3 m by 12.2 m had to be built to display it effectively. It is open to visitors of all religions every day all the year round for a very small entry fee.";

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/ajm2.jpg",
      "assets/images/ajm2-2.jpg",
      "assets/images/ajm2-3.jpg"
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
