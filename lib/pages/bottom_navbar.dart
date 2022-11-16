import 'package:final_project/pages/Terjemahan/terjemahan.dart';
import 'package:final_project/pages/about.dart';
import 'package:final_project/pages/home.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentIndex = 0;
  final List<Widget> body =[
    const Home(), 
    const Translated(),
    const About()    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home, color: Colors.grey,
            ),
            label: 'Beranda', 
            activeIcon: Icon(Icons.home, color: Color.fromARGB(255, 25, 30, 55))
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.translate, color: Colors.grey,
            ),
            label: 'Terjemahan', 
            activeIcon: Icon(Icons.translate, color: Color.fromARGB(255, 25, 30, 55))
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info, color: Colors.grey,
            ),
            label: 'Tentang',
            activeIcon: Icon(Icons.info, color: Color.fromARGB(255, 25, 30, 55))
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color.fromARGB(255, 25, 30, 55),
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}