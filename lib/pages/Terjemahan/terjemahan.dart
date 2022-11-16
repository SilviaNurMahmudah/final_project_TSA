import 'package:flutter/material.dart';

class Translated extends StatefulWidget {
  const Translated({super.key});

  @override
  State<Translated> createState() => _TranslatedState();
}

class _TranslatedState extends State<Translated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 30, 55),
        title: const Text(
          'Terjemahan',
          style: TextStyle(color: Colors.white70),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.translate, color: Colors.white70),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/translate.png",
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 25, 30, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/IdZhCn');
              },
              child: const Text(
                'Indonesia >< China',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 25, 30, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/ZhCnId');
              },
              child: const Text(
                'China >< Indonesia',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
