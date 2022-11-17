import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatedIdZh extends StatefulWidget {
  const TranslatedIdZh({super.key});

  @override
  State<TranslatedIdZh> createState() => _TranslatedState();
}

class _TranslatedState extends State<TranslatedIdZh> {
  GoogleTranslator translator = GoogleTranslator();
  String out = 'Terjemahan';
  final lang = TextEditingController();

  void trans() {
    translator.translate(lang.text, from:"id", to: "zh-cn").then((output) {
      setState(() {
        out = output.text;
      });
      print(out);
    });
  }

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
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/home'));
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white70),
        ),
      ),
      body: Card(
        margin: const EdgeInsets.all(12),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text('Indonesia'),
            const SizedBox(height: 8),
            TextField(
              controller: lang,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                hintText: 'Masukkan Teks',
              ),
              // onChanged: (text) {
              //   trans();
              // },
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: trans,
              child: const Text(
                'Terjemahkan',
                style: TextStyle(
                  color: Color.fromARGB(255, 25, 30, 55),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('China (Sederhana)'),
            const SizedBox(height: 8),
            Text(
              out.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
