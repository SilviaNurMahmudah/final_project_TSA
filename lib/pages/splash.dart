import 'package:final_project/pages/bottom_navbar.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: const BottomNav(),
        backgroundColor: const Color.fromARGB(255, 25, 30, 55),
        image: Image.asset('assets/panda.png', fit: BoxFit.cover,),     
        photoSize: 150,  
        loaderColor: Colors.grey, 
      ),
      // body: Container(
      //   color: Color.fromARGB(255, 12, 16, 44),
      //   child: Center(
      //     child: Container(
      //       height: 300,
      //       child: Image.asset('assets/panda.png'),
      //     ),
      //   ),
      // ),
    );
  }
}