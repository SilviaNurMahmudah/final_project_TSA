class ModelKalimat {
  int? id;
  int? categoryId;
  String? hanzi;
  String? pinyin;
  String? terjemahan;

  ModelKalimat({this.id, this.categoryId, this.hanzi, this.pinyin, this.terjemahan});

  ModelKalimat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['categoryId'];
    hanzi = json['hanzi'];
    pinyin = json['pinyin'];
    terjemahan = json['terjemahan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['categoryId'] = categoryId;
    data['hanzi'] = hanzi;
    data['pinyin'] = pinyin;
    data['terjemahan'] = terjemahan;
    return data;
  }
}
