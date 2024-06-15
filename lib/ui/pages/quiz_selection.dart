import 'package:flutter/material.dart';
import 'package:gamify_traceability_coffee/models/quiz.dart';
import 'package:gamify_traceability_coffee/ui/pages/quiz_page.dart';
import 'package:gamify_traceability_coffee/models/data.dart';

class QuizSelectionPage extends StatelessWidget {
  const QuizSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Kuis', 
        style: TextStyle(color: Colors.green, fontSize: 14),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: quizzes.length,
          itemBuilder: (context, index) {
            final quiz = quizzes[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizPage(quiz: quiz)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text(
                  quiz.title,
                  style: const TextStyle(color: Colors.green,fontSize: 18.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
