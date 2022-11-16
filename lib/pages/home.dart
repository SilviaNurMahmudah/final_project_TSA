import 'package:final_project/widgets/home_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 30, 55),
        title: const Text(
          'Beranda',
          style: TextStyle(color: Colors.white70),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home, color: Colors.white70),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HomeWidget(
                text: 'KOSA KATA', 
                img: 'assets/dictionary.png', 
                onTap: '/KosaKata',
              ),              
              SizedBox(height: 20),
              HomeWidget(
                text: 'CONTOH KALIMAT', 
                img: 'assets/read.png', 
                onTap: '/Kalimat',
              ), 
              SizedBox(height: 20),
              HomeWidget(
                text: 'KUIS', 
                img: 'assets/brain.png', 
                onTap: '/Kuis',
              ), 
            ],
          ),
        ),
      ),
    );
  }
}
