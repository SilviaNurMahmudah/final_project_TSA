import 'package:final_project/pages/Terjemahan/terjemahan.dart';
import 'package:final_project/pages/Terjemahan/translate_id_zh.dart';
import 'package:final_project/pages/Terjemahan/translate_zh_id.dart';
import 'package:final_project/pages/bottom_navbar.dart';
import 'package:final_project/pages/kalimat.dart';
import 'package:final_project/pages/kosa_kata.dart';
import 'package:final_project/pages/Quiz/quiz_screen.dart';
import 'package:final_project/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      routes: {
        '/home' : (context) => const BottomNav(),
        '/KosaKata' : (context) => const KosaKata(),
        '/Kalimat' : (context) => const Kalimat(),
        '/Kuis' : (context) => const QuizzScreen(),
        '/Translate' : (context) => const Translated(),
        '/IdZhCn': (context) => const TranslatedIdZh(),
        '/ZhCnId': (context) => const TranslatedZhId()  
      },
    );
  }
}
