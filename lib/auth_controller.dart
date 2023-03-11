// ignore_for_file: unused_field, unnecessary_overrides

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_canapp/WelcomePage.dart';
import 'package:flutter_canapp/login_page.dart';
import 'package:get/get.dart'
;

class AuthController extends GetxController{
  static AuthController instance=Get.find();
  late Rx<User?>_user;
  //Structure: email, pass, username
  FirebaseAuth auth=FirebaseAuth.instance;
  @override
  void onReady(){
    super.onReady();
    _user= Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _firstScreen);
  }

  _firstScreen(User? user){
    if(user==null){
      print(("Login page"));
      Get.offAll(()=>LoginPage());
    }else{
      Get.offAll(()=>WelcomePage());
    }
  }

void register(String email, String password) {
  try {
    auth.createUserWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    Get.snackbar("About User", "User message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Error al crear cuenta",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(e.toString(),
            style: TextStyle(color: Colors.white)));
  }
}

}
