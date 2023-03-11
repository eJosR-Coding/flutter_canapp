import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_canapp/singup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPass = true;
  
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Login.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to Can App",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Text(
                    "Please login to continue: ",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 0, 0, 0)
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),SizedBox(height: 10,),
                    TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 129, 198)
                        )
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                    ),
                  
                  ),SizedBox(height: 10,),Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),SizedBox(height: 10,),
                    TextField(
                    obscureText: isHiddenPass,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          Icons.visibility,
                         ),
                       ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 129, 198)
                        )
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                    ),
                    
                  ),SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Container(),),
                       Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 7, 81, 186)
                    ),
                  ),
                    ],
                  )
                  
                  // Add more widgets here
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(
                  image: AssetImage("images/Loginbtn.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                    ),
              ),
            ),
            SizedBox(height: w*0.1,),
            RichText(text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.black,
              fontSize: 15
              ), 
              children: [
                TextSpan(
              text: " Please, Register",
              style: TextStyle(
              fontWeight: FontWeight.bold,
                color: Colors.black,
              fontSize: 15
              ),recognizer: TapGestureRecognizer()..onTap=() =>Get.to(()=>SignUpPage())
              )
              ]
            )
            )
          ],
        ),
      ),
    );
  }
    void _togglePasswordView() {
    setState(() {
    isHiddenPass = !isHiddenPass;
  });
  //...
  }
  
}