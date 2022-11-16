class ModelQuiz {
  int? id;
  int? quizId;
  String? question;
  Map<String, bool>? answer;

  ModelQuiz({this.id, this.quizId, this.question, this.answer});

  ModelQuiz.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quizId = json['quizId'];
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['quizId'] = quizId;
    data['question'] = question;
    data['answer'] = answer;
    return data;
  }
}
