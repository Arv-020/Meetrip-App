import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meetrip/screens/email_verfication.dart';
import 'package:meetrip/screens/forget_password.dart';
import 'package:meetrip/screens/home_screen.dart';
import 'package:rive/rive.dart';
import 'package:meetrip/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode emailNode = FocusNode();
  FocusNode emailSignUpNode = FocusNode();
  FocusNode passNode = FocusNode();
  FocusNode passSignUpNode = FocusNode();
  FocusNode cpassNode = FocusNode();
  var txtEmailController = TextEditingController();
  var txtEmailSignUpController = TextEditingController();
  var txtPassController = TextEditingController();
  var txtPassSignUpController = TextEditingController();
  var txtcPassController = TextEditingController();

  bool isHide = false;

  final validEmail = "arvindra@gmail.com";
  final validPass = "12345";

  StateMachineController? machineController;
  SMIInput<bool>? isChecking;
  SMIInput<double>? numLook;
  SMIInput<bool>? isHandsUp;
  SMIInput<bool>? trigSuccess;
  SMIInput<bool>? trigFail;

  CrossFadeState state = CrossFadeState.showFirst;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailNode.addListener(focusEmail);
    emailSignUpNode.addListener(focusEmail);
    passNode.addListener(focusPass);
    passSignUpNode.addListener(focusPass);
    cpassNode.addListener(focusPass);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailNode.removeListener(focusEmail);
    passNode.removeListener(focusPass);
    emailSignUpNode.removeListener(focusEmail);
    passSignUpNode.removeListener(focusPass);
    cpassNode.removeListener(focusPass);
  }

  void focusPass() {
    isHandsUp!.change(state == CrossFadeState.showFirst
        ? passNode.hasFocus
        : passSignUpNode.hasFocus || cpassNode.hasFocus);
  }

  void focusEmail() {
    isChecking!.change(state == CrossFadeState.showFirst
        ? emailNode.hasFocus
        : emailSignUpNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD6E2EA),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 11,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width / 11),
                child: Container(
                  // width: double.infinity,
                  color: Colors.grey,
                  child: Stack(
                    // alignment: Alig,
                    children: [
                      TextLiquidFill(
                        text: "MEETRIP",
                        boxBackgroundColor: const Color(0xffD6E2EA),
                        waveColor: Colors.teal.shade100,
                        textStyle: GoogleFonts.asapCondensed(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.end,
                        boxHeight: 60,
                        loadDuration: const Duration(seconds: 4),
                        waveDuration: const Duration(seconds: 4),
                        loadUntil: 0.8,
                      ),
                      Positioned(
                        top: 4,
                        left: MediaQuery.sizeOf(context).width / 4.5,
                        child: SizedBox(
                            height: 40,
                            child: Image.asset("assets/images/logo.png")),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                // color: Colors.red,
                height: 200,
                // width: ,
                child: RiveAnimation.asset(
                  "assets/animations/login-teddy.riv",
                  fit: BoxFit.cover,
                  stateMachines: const ["Login Machine"],
                  onInit: (artboard) {
                    machineController = StateMachineController.fromArtboard(
                        artboard, "Login Machine");
                    if (machineController == null) return;

                    artboard.addController(machineController!);
                    isChecking = machineController!.findInput("isChecking");
                    numLook = machineController!.findInput("numLook");
                    isHandsUp = machineController!.findInput("isHandsUp");
                    trigSuccess = machineController!.findInput("trigSuccess");
                    trigFail = machineController!.findInput("trigFail");
                  },
                ),
              ),
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: Offset(4, 10),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: AnimatedCrossFade(
                  firstChild: state == CrossFadeState.showFirst
                      ? Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome Back!",
                                style: TextStyle(
                                    color: Colors.teal.shade700,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              TextField(
                                onChanged: (value) {
                                  numLook!.change((value.length + 10));
                                },
                                focusNode: emailNode,
                                controller: txtEmailController,
                                onTapOutside: (e) {
                                  FocusManager.instance.primaryFocus!.unfocus();
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade100,
                                  labelStyle:
                                      TextStyle(color: Colors.teal.shade700),
                                  label: const Text("Email"),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade700,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              TextField(
                                focusNode: passNode,
                                controller: txtPassController,
                                obscureText: isHide,
                                onTapOutside: (e) {
                                  FocusManager.instance.primaryFocus!.unfocus();
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.shade100,
                                  suffixIconColor: passNode.hasFocus
                                      ? Colors.teal.shade100
                                      : Colors.teal.shade700,
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        isHide = !isHide;
                                        setState(() {});
                                      },
                                      child: Icon(isHide
                                          ? Icons.visibility_off
                                          : Icons.visibility)),
                                  labelStyle:
                                      TextStyle(color: Colors.teal.shade700),
                                  label: const Text("Password"),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade700,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ForgetPasswordScreen()));
                                    },
                                    child: Text(
                                      "Forget Password?",
                                      style: TextStyle(
                                          color: Colors.teal.shade700,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              CutomButton(
                                  onPressed: () async {
                                    emailNode.unfocus();
                                    passNode.unfocus();

                                    String emailTxt =
                                        txtEmailController.text.toString();
                                    String passTxt =
                                        txtPassController.text.toString();
                                    if (emailTxt.isEmpty || passTxt.isEmpty) {
                                      await Future.delayed(
                                          const Duration(milliseconds: 500));
                                      trigFail!.change(true);
                                    } else {
                                      showDialog(
                                          context: context,
                                          barrierDismissible: false,
                                          builder: (context) {
                                            return WillPopScope(
                                              child: Dialog(
                                                backgroundColor: Colors.grey
                                                    .withOpacity(0.3),
                                                elevation: 15,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const SizedBox(
                                                    height: 50,
                                                    width: 10,
                                                    child: Center(
                                                        child:
                                                            CircularProgressIndicator())),
                                              ),
                                              onWillPop: () async => false,
                                            );
                                          });
                                      await Future.delayed(
                                          const Duration(milliseconds: 500));
                                      if (mounted) Navigator.pop(context);

                                      if (emailTxt == validEmail &&
                                          passTxt == validPass) {
                                        trigSuccess!.change(true);
                                        await Future.delayed(
                                            const Duration(seconds: 3));
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const HomeScreen()));
                                      } else {
                                        await Future.delayed(
                                            const Duration(seconds: 2));
                                        trigFail!.change(true);
                                      }
                                    }
                                  },
                                  txtColor: Colors.white,
                                  btnTxt: "Login",
                                  bgColor: Colors.teal),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Doesn't Have an Account?",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      state = CrossFadeState.showSecond;
                                      setState(() {});
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Colors.teal.shade700,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    color: Colors.teal.shade700,
                                    height: 0.5,
                                    width: MediaQuery.sizeOf(context).width / 3,
                                  ),
                                  const Text(
                                    "Or with",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Container(
                                    color: Colors.teal.shade700,
                                    height: 0.5,
                                    width: MediaQuery.sizeOf(context).width / 3,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        elevation: 15,
                                        backgroundColor: Colors.white,
                                        fixedSize: const Size(25, 25)),
                                    child: SizedBox(
                                      height: 20,
                                      child: Image.asset(
                                          "assets/images/google.png"),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        elevation: 15,
                                        backgroundColor: Colors.white,
                                        fixedSize: const Size(25, 25)),
                                    child: SizedBox(
                                      height: 25,
                                      child: Image.asset(
                                          "assets/images/facebook.png"),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : Container(),
                  secondChild: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create an Account!",
                          style: TextStyle(
                              color: Colors.teal.shade700,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        TextField(
                          onChanged: (value) {
                            numLook!.change((value.length + 10));
                          },
                          focusNode: emailSignUpNode,
                          controller: txtEmailSignUpController,
                          onTapOutside: (e) {
                            FocusManager.instance.primaryFocus!.unfocus();
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            labelStyle: TextStyle(color: Colors.teal.shade700),
                            label: const Text("Email"),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.teal.shade700,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        TextField(
                          focusNode: passSignUpNode,
                          controller: txtPassSignUpController,
                          onTapOutside: (e) {
                            FocusManager.instance.primaryFocus!.unfocus();
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            labelStyle: TextStyle(color: Colors.teal.shade700),
                            label: const Text("Password"),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.teal.shade700,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        TextField(
                          focusNode: cpassNode,
                          controller: txtcPassController,
                          onTapOutside: (e) {
                            FocusManager.instance.primaryFocus!.unfocus();
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            labelStyle: TextStyle(color: Colors.teal.shade700),
                            label: const Text("Confirm Password"),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.teal.shade700,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     const SizedBox(
                        //       width: 5,
                        //     ),
                        //     Text(
                        //       "Forget Password?",
                        //       style: TextStyle(
                        //           color: Colors.teal.shade700,
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 15),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(
                          height: 11,
                        ),
                        CutomButton(
                            onPressed: () async {
                              emailNode.unfocus();
                              passNode.unfocus();

                              String emailTxt =
                                  txtEmailController.text.toString();
                              String passTxt =
                                  txtPassController.text.toString();
                              if (emailTxt.isEmpty || passTxt.isEmpty) {
                                await Future.delayed(
                                    const Duration(milliseconds: 500));
                                trigFail!.change(true);
                              } else {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) {
                                      return WillPopScope(
                                        child: Dialog(
                                          backgroundColor:
                                              Colors.grey.withOpacity(0.3),
                                          elevation: 15,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const SizedBox(
                                              height: 50,
                                              width: 10,
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator())),
                                        ),
                                        onWillPop: () async => false,
                                      );
                                    });
                                await Future.delayed(
                                    const Duration(milliseconds: 500));
                                if (mounted) Navigator.pop(context);
                                await Future.delayed(
                                    const Duration(milliseconds: 500));
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              }
                            },
                            txtColor: Colors.white,
                            btnTxt: "Sign Up",
                            bgColor: Colors.teal),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already Have an Account?",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                state = CrossFadeState.showFirst;
                                setState(() {});
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.teal.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              color: Colors.teal.shade700,
                              height: 0.5,
                              width: MediaQuery.sizeOf(context).width / 3,
                            ),
                            const Text(
                              "Or with",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              color: Colors.teal.shade700,
                              height: 0.5,
                              width: MediaQuery.sizeOf(context).width / 3,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  elevation: 15,
                                  backgroundColor: Colors.white,
                                  fixedSize: const Size(25, 25)),
                              child: SizedBox(
                                height: 20,
                                child: Image.asset("assets/images/google.png"),
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  elevation: 15,
                                  backgroundColor: Colors.white,
                                  fixedSize: const Size(25, 25)),
                              child: SizedBox(
                                height: 25,
                                child:
                                    Image.asset("assets/images/facebook.png"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  firstCurve: Curves.fastOutSlowIn,
                  secondCurve: Curves.fastOutSlowIn,
                  crossFadeState: state,
                  reverseDuration: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
