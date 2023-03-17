import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_canapp/Evelyn/start_page.dart';
import 'package:flutter_canapp/WelcomePage.dart';
import 'package:flutter_canapp/loadingScreen.dart';
import 'package:flutter_canapp/login_page.dart';
import 'package:flutter_canapp/singup_page.dart';
import "package:get/get.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

//AL LADO DE main() -> async
void main(){
  
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}
