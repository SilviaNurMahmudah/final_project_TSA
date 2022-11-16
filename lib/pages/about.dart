import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 30, 55),
        title: const Text(
          'Tentang',
          style: TextStyle(color: Colors.white70),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.info, color: Colors.white70),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                '你好',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Image(
                image: AssetImage('assets/info.png'),
                height: 200,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Informasi lebih lengkap anda dapat menghubungi',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 10),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () async {
                    String url = 'https://www.github.com/SilviaNurMahmudah/';
                    if (await canLaunch(url)) {
                      await launch(
                        url,
                        forceWebView: true,
                        enableJavaScript: false,
                      );
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text(
                    'Github',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  FontAwesomeIcons.envelope,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () async {
                    String email = 'silvia.mahmudah@gmail.com';
                    String emailUrl ="mailto:$email";

                    if (await canLaunch(emailUrl)) {
                      await launch(emailUrl);
                    } else {
                      throw "Error occured sending an email";
                    }
                  },
                  child: const Text(
                    'Email',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.black,
                ),
                const SizedBox(width: 6),
                TextButton(
                  onPressed: () async {
                    String url = 'https://instagram.com/silvia.s20/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text(
                    'Instagram',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
