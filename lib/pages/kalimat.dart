import 'dart:convert';
import 'package:final_project/model/model_category.dart';
import 'package:final_project/widgets/card.dart';
import 'package:final_project/widgets/stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as root_bundle;

class Kalimat extends StatefulWidget {
  const Kalimat({Key? key}) : super(key: key);

  @override
  State<Kalimat> createState() => _KalimatState();
}

class _KalimatState extends State<Kalimat> {
  Future<List<ModelCategory>> readJsonData() async {
    final jsondata =
        await root_bundle.rootBundle.loadString('assets/data/category.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => ModelCategory.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 30, 55),
        title: const Text(
          'Kategori Kalimat',
          style: TextStyle(color: Colors.white70),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/home'));
          },
          icon: const Icon(Icons.home, color: Colors.white70),
        ),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: readJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(
                child: Text("${data.error}"),
              );
            } else if (data.hasData) {
              var items = data.data as List<ModelCategory>;
              return GridView.builder(
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 25, 30, 55),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.all(12),
                    child: Expanded(
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: SingleChildScrollView(
                                  child: Container(
                                    color: const Color.fromARGB(255, 25, 30, 55),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const StackWidget(
                                          text: "Contoh Kalimat",
                                          text2: "Contoh kalimat dasar yang sering digunakan dalam sehari-hari",
                                          img: "assets/read.png",
                                        ),

                                        for (int i = 0; i < items[index].kalimat!.length; i++)
                                        SingleChildScrollView(
                                          child: Expanded(
                                            child: SingleChildScrollView(
                                              child: CardWidget(
                                                terjemahan: items[index].kalimat![i].terjemahan.toString(),
                                                hanzi: items[index].kalimat![i].hanzi.toString(),
                                                pinyin: items[index].kalimat![i].pinyin.toString(),
                                                audio: items[index].kalimat![i].audio.toString(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: NetworkImage(items[index].img.toString()),
                              height: 100,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              items[index].kategori.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                padding: const EdgeInsets.all(10),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}