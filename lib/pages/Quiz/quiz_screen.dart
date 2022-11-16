import 'package:final_project/data/questions_example.dart';
import 'package:final_project/pages/Quiz/result_screen.dart';
import 'package:flutter/material.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Pertanyaan Berikutnya";
  bool answered = false;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252c4a),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 30, 55),
        title: const Text(
          'Kuis',
          style: TextStyle(color: Colors.white70),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/home'));
          },
          icon: const Icon(Icons.home, color: Colors.white70),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          controller: _controller!,
          onPageChanged: (page) {
            if (page == questions.length - 1) {
              setState(() {
                btnText = "Lihat Hasil";
              });
            }
            setState(() {
              answered = false;
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Pertanyaan ${index + 1}/${questions.length}",
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  const Divider(color: Colors.white),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "${questions[index].question}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  for (int i = 0; i < questions[index].answers!.length; i++)
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: const EdgeInsets.only(
                          bottom: 20.0, left: 12.0, right: 12.0),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        fillColor: btnPressed
                            ? questions[index].answers!.values.toList()[i]
                                ? Colors.green
                                : Colors.red
                            : const Color(0xFF117eeb),
                        onPressed: !answered
                            ? () {
                                if (questions[index]
                                    .answers!
                                    .values
                                    .toList()[i]) {
                                  score++;
                                  print("Ya");
                                } else {
                                  print("Tidak");
                                }
                                setState(() {
                                  btnPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child: Text(
                          questions[index].answers!.keys.toList()[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 40.0),
                  RawMaterialButton(
                    onPressed: () {
                      if (_controller!.page?.toInt() == questions.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultScreen(score)));
                      } else {
                        _controller!.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeInExpo);

                        setState(() {
                          btnPressed = false;
                        });
                      }
                    },
                    shape: const StadiumBorder(),
                    fillColor: Colors.blue,
                    padding: const EdgeInsets.all(18.0),
                    elevation: 0.0,
                    child: Text(
                      btnText,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: questions.length,
        ),
      ),
    );
  }
}
