import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_canapp/auth_controller.dart';
import 'package:flutter_canapp/login_page.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    bool isHiddenPass = true;

  @override

  Widget build(BuildContext context) {
    var emailControler=TextEditingController();
    var PassControler=TextEditingController();
    List iconimages=[
      "google.jpg","facebook.jpg","twitter.png"
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.31,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Login.png"),
                  fit: BoxFit.cover,
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: h*0.20,),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 37,
                    backgroundImage: AssetImage(
                      "images/icongoogle.jpg"
                    ),
                  )
                ],
              ),
            ),SizedBox(height: 14,),
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
                  SizedBox(height: 20,),
                    TextField(
                      controller: emailControler,
                    decoration: InputDecoration(
                      hintText: "Email address",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 129, 198)
                        )
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                    ),
                  
                  ),SizedBox(height: 20,)
                  ,
                    TextField(
                    decoration: InputDecoration(
                       hintText: "Username",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 129, 198)
                        )
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                    ),
                  
                  )
                  ,SizedBox(height: 20,)
                  ,TextField(
                    controller: PassControler,
                    obscureText: isHiddenPass,
                    decoration: InputDecoration(
                       hintText: "Password",
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
                  
                  ),SizedBox(height: 20,)
                  ,TextField(
                    controller: PassControler,
                    obscureText: isHiddenPass,
                    decoration: InputDecoration(
                       hintText: "Confirm Password",
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
                  // Add more widgets here
                ],
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                AuthController.instance.register(emailControler.text.trim(), PassControler.text.trim());
              },
              child: Container(
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
                        "Sign in",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                      ),
                ),
              ),
            ),
            SizedBox(height: w*0.05,),
            RichText(text: TextSpan(
              text: "Already have an account?",
              style: TextStyle(
                color: Colors.black,
              fontSize: 15
              ), 
              children: [
                TextSpan(
              text: " Please, Login",
              style: TextStyle(
              fontWeight: FontWeight.bold,
                color: Colors.black,
              fontSize: 15
              ),recognizer: TapGestureRecognizer()..onTap=() =>Get.back()
              )
              ]
            )
            ),SizedBox(height: w*0.05,),
          Wrap(
            children: List<Widget>.generate(3, (index)
            {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "images/"+iconimages[index]
                    ),
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
      void _togglePasswordView() {

    setState(() {
    isHiddenPass = !isHiddenPass;
  });
  //...
  }

}