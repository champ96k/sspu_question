enum Other { OTHER_META_DATA }

final otherValues = EnumValues({
    "other meta data": Other.OTHER_META_DATA
});

enum QuestionPaperUrl { LINK_URL }

final questionPaperUrlValues = EnumValues({
    "Link url": QuestionPaperUrl.LINK_URL
});

enum SubjectName { DSA }

final subjectNameValues = EnumValues({
    "DSA": SubjectName.DSA
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
