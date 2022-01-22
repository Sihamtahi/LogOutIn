import 'package:firebase/ressources_/login_page.dart';
import 'package:firebase/ressources_/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController
{
  static AuthController instance = Get.find(); // we can access this controller inside all creen Pages.

  // email, passeword, name ....
  late Rx<User?> _user ;
  FirebaseAuth auth = FirebaseAuth.instance;


  // initalise the _user
  @override
  void onReady() {

    super.onReady();
    _user = auth.currentUser as Rx<User?>;
   // whatever happend to the user, the app will be notified (thr intsance _user).
    _user.bindStream(auth.userChanges());

    // _user is the listener
    // _initialScreen is the callbackfunction
    ever(_user, _initialScreen);

  }
  _initialScreen(User? user) {
    if (user == null) {
      print("Login Page");
      Get.offAll(() => LoginPage());
    }
    else {
      Get.offAll(() => WelcomePage());
    }
  }


    void register(String email, String password)
    {

    try{
      auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    catch(e)
      {
          Get.snackbar("About User",  "User Message",
          backgroundColor: Colors.redAccent,
          snackPosition : SnackPosition.BOTTOM,
            titleText: Text(
              "Account creation failed",
              style: TextStyle(
                color: Colors.white
              ),
            )
          );
          messageText: Text(e.toString(), style: TextStyle( color: Colors.white),);
      }

    }




}