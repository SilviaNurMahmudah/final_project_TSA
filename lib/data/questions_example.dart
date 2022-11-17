import 'package:final_project/model/questions_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "Manakah buah Apel ?",
    {
      "草莓": false,
      "香蕉": false,
      "苹果": true,
      "猕猴桃": false,
    },
  ),
  QuestionModel("西瓜 memiliki arti ?", {
    "Mangga": false,
    "Durian": false,
    "Anggur": false,
    "Semangka": true,
  }),
  QuestionModel("西瓜 dalam tulisan pinyin ditulis ... ", {
    "Píngguǒ": false,
    "Xīguā": true,
    "Mùguā": false,
    "Mángguǒ": false,
  }),
  QuestionModel("Liúlián apabila ditulis dalam hanzi ... ", {
    "猕猴桃": false,
    "香蕉": false,
    "榴莲": true,
    "橙": false,
  }),
  QuestionModel("Mangga ?", {
    "芒果": true,
    "Píng guǒ": false,
    "葡萄": false,
    "香蕉": false,
  }),
  // QuestionModel("About How long would it take to travel to Mars ?", {
  //   "Three days": false,
  //   "A month": false,
  //   "Eight months": true,
  //   "Two years": false,
  // }),
  // QuestionModel(
  //     "Mars is Named after the Roman god Mars. What is he the god of ?", {
  //   "Fire": false,
  //   "Love": false,
  //   "Agriculture": false,
  //   "War": true,
  // }),
  // QuestionModel("Mars Is the ___ planet from the sun ?", {
  //   "Secon": false,
  //   "Third": false,
  //   "Fourth": true,
  //   "Sixth": false,
  // }),
  // QuestionModel(
  //   "Where did Orville and Wilbur Wright build their first flying airplane ?",
  //   {
  //     "Paris, France": false,
  //     "Boston, Massachusetts": false,
  //     "Kitty Hawk, North Carolina": true,
  //     "Tokyou, Japan": false,
  //   }),
  // QuestionModel(
  //     "The First astronuts to travel to space came from which country ?", {
  //   "United States": false,
  //   "Soviet Union (now Russia)": true,
  //   "China": false,
  //   "Rocketonia": false,
  // }),
];
