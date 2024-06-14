class Question {
  final int id;
  final String content;
  final DateTime? createdAt;

  Question({
    required this.id,
    required this.content,
    this.createdAt,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      content: json['content'],
      createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      'created_at': createdAt?.toIso8601String(),
    };
  }
}
