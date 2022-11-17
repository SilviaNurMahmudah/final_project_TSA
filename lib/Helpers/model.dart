class KategoriModel {
  String? kategori;
  String? img;

  KategoriModel(this.kategori, this.img);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'kategori': kategori,
      'img': img
    };
    return map;
  }

  KategoriModel.fromMap(Map<String, dynamic> map) {
    kategori = map['kategori'];
    img = map['img'];
  }
}
