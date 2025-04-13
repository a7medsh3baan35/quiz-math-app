import 'dart:io';

class MathQuestions {
  String question;
  double answer;
  MathQuestions({required this.question, required this.answer});
}

void main() {
  List<MathQuestions> collection = [
    MathQuestions(question: "2+4", answer: 6),
    MathQuestions(question: "30-25", answer: 5),
    MathQuestions(question: "49/7", answer: 7)
  ];

  for (var element in collection) {
    double userAnswer = getAnswer(element.question);

    if (userAnswer == element.answer) {
      print("Correct, the answer is ${element.answer}");
    } else {
      print("Incorrect, the answer was ${element.answer}");
    }
  }
}

double getAnswer(String msg) {
  print('what is $msg');
  var answer = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return answer;
}
