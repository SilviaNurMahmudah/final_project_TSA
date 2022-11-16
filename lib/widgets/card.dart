import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.terjemahan,
    required this.hanzi,
    required this.pinyin,
    required this.audio
  }) : super(key: key);

  final String terjemahan;
  final String hanzi;
  final String pinyin;
  final String audio;

  void playAudio(String path) async {
    final player = AudioPlayer();
    await player.setAsset(path);
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(15),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            terjemahan,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                hanzi,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                pinyin,
                                style: const TextStyle(
                                    fontSize: 16, fontStyle: FontStyle.italic),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                              child: Text(
                                terjemahan,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                              child: IconButton(
                                icon: const Icon(Icons.volume_up, size: 20),
                                onPressed: () {playAudio(audio); 
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
