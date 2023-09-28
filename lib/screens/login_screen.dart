import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:meetrip/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD6E2EA),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              // width: ,
              child: RiveAnimation.asset(
                "assets/animations/login-teddy.riv",
                fit: BoxFit.cover,
                onInit: (e) async => false,
              ),
            ),
            Container(
              width: 350,
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 25,
                      offset: Offset(4, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextField(),
                  TextField(),
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: Colors.teal.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  CutomButton(
                      onPressed: () {},
                      txtColor: Colors.white,
                      btnTxt: "Login",
                      bgColor: Colors.teal),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Doesn't Hane an Account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.teal.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Divider(
                        height: 10,
                        thickness: 10,
                        indent: 1,
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
