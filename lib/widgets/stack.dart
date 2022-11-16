import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({
    Key? key,
    required this.text,
    required this.text2,
    required this.img,
  }) : super(key: key);

  final String text;
  final String text2;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.only(top: 80),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xff44aca0),
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Container(
                margin: const EdgeInsets.only(top: 120, left: 15, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      text2,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 220,
            height: 170,
            decoration: const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  img,
                  width: 160,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
