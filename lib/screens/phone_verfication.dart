import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

class PhoneVerficationScreen extends StatelessWidget {
  const PhoneVerficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 238, 240),
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 235, 238, 240),
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
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
            boxBackgroundColor: Color.fromARGB(255, 235, 238, 240),
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            Text(
              "Verify Phone Number",
              style: GoogleFonts.asapCondensed(
                  fontSize: 28, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "Please enter the code we just sent to Number",
              style: GoogleFonts.asapCondensed(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "70XXXXXX20",
              style: GoogleFonts.asapCondensed(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        )
                      ]),
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    style: GoogleFonts.asapCondensed(fontSize: 21),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        )
                      ]),
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                      if (value.length == 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    style: GoogleFonts.asapCondensed(fontSize: 21),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        )
                      ]),
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                      if (value.length == 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    style: GoogleFonts.asapCondensed(fontSize: 21),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.1,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        )
                      ]),
                  height: 64,
                  width: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.length == 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    style: GoogleFonts.asapCondensed(fontSize: 21),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal,
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            CutomButton(
                btnTxt: "Continue",
                bgColor: Colors.teal,
                txtColor: Colors.white,
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
