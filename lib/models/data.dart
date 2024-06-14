import 'package:gamify_traceability_coffee/models/option.dart';
import 'package:gamify_traceability_coffee/models/question.dart';

final List<Question> questions = [
  Question(id: 1, content: 'Apa ibu kota Indonesia?'),
  Question(id: 2, content: 'Berapa jumlah provinsi di Indonesia?'),
  Question(id: 3, content: 'Pupuk apa yang bagus?'),

];

final List<Option> options = [
  Option(id: 1, questionId: 1, content: 'Jakarta', isCorrect: true),
  Option(id: 2, questionId: 1, content: 'Bandung', isCorrect: false),
  Option(id: 3, questionId: 1, content: 'Surabaya', isCorrect: false),
  Option(id: 4, questionId: 1, content: 'Medan', isCorrect: false),
  Option(id: 5, questionId: 2, content: '34', isCorrect: true),
  Option(id: 6, questionId: 2, content: '33', isCorrect: false),
  Option(id: 7, questionId: 2, content: '35', isCorrect: false),
  Option(id: 8, questionId: 2, content: '32', isCorrect: false),
    Option(id: 9, questionId: 3, content: 'NPK 1', isCorrect: true),
  Option(id: 10, questionId: 3, content: 'NPK 2', isCorrect: false),
  Option(id: 11, questionId: 3, content: 'NPK 3', isCorrect: false),
  Option(id: 12, questionId: 3, content: 'NPK 4', isCorrect: false),
];
