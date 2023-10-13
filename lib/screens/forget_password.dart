// import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/screens/email_verfication.dart';
import 'package:meetrip/screens/phone_verfication.dart';
import 'package:meetrip/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  int borderFlag = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 238, 240),
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 235, 238, 240),
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            UniconsLine.arrow_left,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Container(
          // width: ,
          color: Colors.grey,
          child: TextLiquidFill(
            text: "MEETRIP",
            boxBackgroundColor: const Color.fromARGB(255, 235, 238, 240),
            waveColor: Colors.teal.shade100,
            textStyle: GoogleFonts.asapCondensed(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            boxHeight: 100,
            boxWidth: 90,
            loadDuration: const Duration(seconds: 4),
            waveDuration: const Duration(seconds: 4),
            loadUntil: 0.8,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 25, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forget Password",
              style: GoogleFonts.asapCondensed(
                  fontSize: 28, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              "Select a option to reset the password",
              style: GoogleFonts.asapCondensed(
                fontSize: 18,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                borderFlag = 1;
                setState(() {});
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    side: borderFlag == 1
                        ? const BorderSide(color: Colors.teal, width: 2)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(5)),
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: Colors.teal.shade100, width: 1)),
                        child: const Icon(
                          Icons.mail,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.asapCondensed(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Send to your email",
                            style: GoogleFonts.asapCondensed(
                                fontSize: 12, color: Colors.grey.shade500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            InkWell(
              onTap: () {
                borderFlag = 2;
                setState(() {});
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    side: borderFlag == 2
                        ? const BorderSide(
                            width: 2,
                            color: Colors.teal,
                          )
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(5)),
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 1, color: Colors.teal.shade100)),
                        child: const Center(
                          child: Icon(UniconsLine.phone),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: GoogleFonts.asapCondensed(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Send to your number",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            CutomButton(
              btnTxt: "Continue",
              bgColor: Colors.teal,
              txtColor: Colors.white,
              onPressed: () {
                if (borderFlag == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const EmailVerficationScreen()));
                }
                if (borderFlag == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const PhoneVerficationScreen()));
                }
              },
              width: double.maxFinite,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
