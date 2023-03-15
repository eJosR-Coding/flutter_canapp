import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_canapp/login_page.dart';
import 'package:get/get.dart';

import 'firebase_controller.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isHiddenPass1 = true; // state variable for first password field
  bool isHiddenPass2 = true; // state variable for second password field
  TextEditingController emailControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  TextEditingController _secondPasswordController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String? _validatePassword(String value) {
    if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _togglePasswordView1() {
    // callback for first password field
    setState(() {
      isHiddenPass1 = !isHiddenPass1;
    });
  }

  void _togglePasswordView2() {
    // callback for second password field
    setState(() {
      isHiddenPass2 = !isHiddenPass2;
    });
  }

  List iconimages = ["google.jpg", "facebook.jpg", "twitter.png"];
  double w = 0;
  double h = 0;

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.31,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Login.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h * 0.20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 37,
                    backgroundImage: AssetImage("images/icongoogle.jpg"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Please fill your information to continue",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: emailControler,
                    decoration: InputDecoration(
                        hintText: "Email address",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 129, 198))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 129, 198))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: passControler,
                    obscureText:
                        isHiddenPass1, // use the state variable for first password field
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: InkWell(
                          onTap:
                              _togglePasswordView1, // use the callback for first password field
                          child: Icon(
                            isHiddenPass1
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 0, 129, 198))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _secondPasswordController,
                    obscureText:
                        isHiddenPass2, // use the state variable for second password field
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        suffixIcon: InkWell(
                          onTap:
                              _togglePasswordView2, // use the callback for second password field
                          child: Icon(
                            isHiddenPass2
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 129, 198),
                        )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Add more widgets here
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () async {
                UserCredential userCredential =
                    await FirebaseController.registerUser(
                        emailControler.text.trim(), passControler.text.trim());
              },
              child: Container(
                width: w * 0.5,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                    image: AssetImage("images/Loginbtn.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: w * 0.05,
            ),
            RichText(
                text: TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: [
                  TextSpan(
                      text: " Please, Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.back())
                ])),
            SizedBox(
              height: w * 0.05,
            ),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("images/" + iconimages[index]),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
