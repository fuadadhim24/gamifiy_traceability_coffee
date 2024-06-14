import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/models/data.dart';
import 'package:gamify_traceability_coffee/models/option.dart';
import 'package:gamify_traceability_coffee/models/question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  void _nextQuestion(bool isCorrect) {
    if (isCorrect) {
      _score++;
    }

    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _showResult();
    }
  }

  void _showResult() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Hasil Kuis'),
        content: Text('Skor Anda: $_score'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _currentQuestionIndex = 0;
                _score = 0;
              });
            },
            child: const Text('Ulangi'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[_currentQuestionIndex];
    final questionOptions = options.where((option) => option.questionId == question.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuis'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.content,
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ...questionOptions.map((option) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () => _nextQuestion(option.isCorrect),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      option.content,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
