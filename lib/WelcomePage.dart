import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
              height: h * 0.31,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/Login.png"),
                fit: BoxFit.cover,
              )),
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
            SizedBox(height: 30,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
                SizedBox(height: 20,),
              Text(
                "exampleuser@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 27, 147, 244)
                ),
              )
                ],
              ),
            )
            ,SizedBox(height: 200,),
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
                      "Start game",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                    ),
                    
              ),
            ),
            SizedBox(height: w*0.05,)         
          ],
        ),
      ),
    );
 }
 
}