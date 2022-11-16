// import 'package:final_project/model/model_kosa_kata.dart';
// import 'package:final_project/pages/kosa_kata.dart';

// class ModelCategory{
//   int? id;
//   String? kategori;
//   String? img;
//   late List<ModelKosaKata> kosaKata;

//   ModelCategory(this.id, this.kategori, this.img, this.kosaKata);

//   ModelCategory.fromJson(Map<String, dynamic> json) {

//     id = json['id'];
//     kategori = json['kategori'];
//     img = json['img'];
//     kosaKata = List<ModelKosaKata>.from(json["kosaKata"].map((kosaKata) {
//       return ModelKosaKata.fromJson(kosaKata);
//     })); 
//   }
// }

import 'package:final_project/model/model_quiz.dart';

import 'model_kalimat.dart';
import 'model_kosa_kata.dart';

class ModelCategory {
  int? id;
  String? kategori;
  String? img;
  List<ModelKosaKata>? kosaKata;
  List<ModelKalimat>? kalimat;
  List<ModelQuiz>? quiz;

  ModelCategory({this.id, this.kategori, this.img, this.kosaKata, this.kalimat, this.quiz});

  ModelCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kategori = json['kategori'];
    img = json['img'];
    if (json['kosaKata'] != null) {
      kosaKata = <ModelKosaKata>[];
      json['kosaKata'].forEach((v) {
        kosaKata!.add(ModelKosaKata.fromJson(v));
      });
    }

    if (json['kalimat'] != null) {
      kalimat = <ModelKalimat>[];
      json['kalimat'].forEach((v) {
        kalimat!.add(ModelKalimat.fromJson(v));
      });
    }

    if (json['quiz'] != null) {
      quiz = <ModelQuiz>[];
      json['quiz'].forEach((v) {
        quiz!.add(ModelQuiz.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['kategori'] = kategori;
    data['img'] = img;
    if (kosaKata != null) {
      data['kosaKata'] = kosaKata!.map((v) => v.toJson()).toList();
    }
    if (kalimat != null) {
      data['kalimat'] = kalimat!.map((v) => v.toJson()).toList();
    }
    if (quiz != null) {
      data['quiz'] = quiz!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
