import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_canapp/Evelyn/role_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFA1A1A1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text(
                    "Hola, listo para jugar?",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "exampleuser@gmail.com",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 27, 147, 244)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Image.asset(
                          "images/doctora1.png",
                          width: w * 0.8,
                          height: h * 0.25,
                        ),
                        Positioned(
                          left: w * 0.1,
                          top: h * 0.15,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Text(
                              "Hola! soy Rita y encantada de conocerte",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: w * 0.05),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RolePage()),
                );
              },
              child: Container(
                width: w * 0.5,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "Start game",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: w * 0.05)
          ],
        ),
      ),
    );
  }
}