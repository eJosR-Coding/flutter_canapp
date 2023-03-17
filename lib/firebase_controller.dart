import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_canapp/WelcomePage.dart';
import 'package:flutter_canapp/loadingScreen.dart';
import 'package:get/get.dart';

class FirebaseController extends GetxController{
  late FirebaseAuth _auth;

  @override
  void onInit() {
    super.onInit();
    _auth = FirebaseAuth.instance;
  }

  Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

//Controlador de registro
  Future<UserCredential> registerUser(String email, String password) async {
    try {
      //createUserWithEmailAndPassword solo admite campo de correo y contraseña
      //Agregar las credenciales de autenticacion en firebase(FALTA)
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        //ver si puedo integrar mas,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Error',
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
      );
      rethrow;
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      rethrow;
    }
  }

  static createUserWithEmailAndPassword(String trim, String trim2) {}

//Iniciar sesion con usuario existente
  Future<void> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      Get.offAll(() => LoadingScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No se encontre el correo');
      } else if (e.code == 'wrong-password') {
        print('Contraseña incorrecta');
      }
    } catch (e) {
      print(e);
    }
  }

//Cerrar sesion de usuario
  Future<void> signOut() async {
    await _auth.signOut();
    Get.offAll(() => WelcomePage());
  }
}
