import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/models/quiz.dart';

class QuizPage extends StatefulWidget {
  final Quiz quiz;

  const QuizPage({required this.quiz, super.key});

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

    if (_currentQuestionIndex < widget.quiz.questions.length - 1) {
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
            child: const Text('Ulangi',
             style: TextStyle(color: Colors.green, fontSize: 14),),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop(); 
            },
            child: const Text('Kembali ke Daftar Kuis',
            style: TextStyle(color: Colors.green, fontSize: 14),),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.quiz.questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.quiz.title,style: TextStyle(color: Colors.green, fontSize: 14),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.content,
              style: const TextStyle(color: Colors.green,fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ...question.options.map((option) => Container(
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
