class QuestionPapers {
  String? paperNmae;
  String? patternName;
  String? downloadURL;

  QuestionPapers({
    this.paperNmae,
    this.patternName,
    this.downloadURL,
  });

  QuestionPapers.fromJson(Map<String, dynamic> json) {
    paperNmae = json['paperNmae'];
    patternName = json['patternName'];
    downloadURL = json['downloadURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['paperNmae'] = paperNmae;
    data['patternName'] = patternName;
    data['downloadURL'] = downloadURL;
    return data;
  }
}
