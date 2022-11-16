import 'package:final_project/pages/home.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252c4a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "SELAMAT",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 45.0),
          const Text(
            "Nilai kamu adalah",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          const SizedBox(height: 20.0),
          Text(
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 100.0),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/home'));
            },
            // shape: StadiumBorder(),
            // color: AppColor.secondaryColor,
            // padding: EdgeInsets.all(18.0),
            child: const Text(
              "Ulangi Kuis",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
