import 'package:flutter/material.dart';
import 'package:quiz_app1/question_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answers? selectedAnswer;
  bool isGood = false;
  @override
  Widget build(BuildContext context) {
    // define the datas

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 11, 112),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                "QCM Stat-Proba",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(
                height: 50.0,
              ),
              _questionWidget(),
              _answerList(),
              // _nextButton(),
              const SizedBox(
                height: 50.0,
              ),
              const Text('Made with ♥ by M&H'),
              //  Text('Good luck', style: TextStyle(color: Colors.white,)),
            ],
          ),
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
              "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
        const SizedBox(height: 20),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(16)),
            width: double.infinity,
            child: Text(
              questionList[currentQuestionIndex].questionText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ))
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answers answer) {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    bool isSelected = answer == selectedAnswer;
    return Container(
        width: double.infinity,
        height: 48,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ElevatedButton(
            child: Text(answer.answerText),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: isSelected ? Colors.orangeAccent : Colors.white,
              onPrimary: isSelected ? Colors.white : Colors.black,
            ),
            onPressed: () {
              if (selectedAnswer == null) {
                if (answer.isCorrect) {
                  score++;
                  isGood = true;
                  // print(score);
                }
              }
              ;
              if (isLastQuestion) {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (_) => _showScoreDialog());
              } else {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (_) => _showHelpDialog());
                setState(() {
                  selectedAnswer = answer;
                });
              }
            }));
  }

  _showScoreDialog() {
    bool isPassed = false;
    if (score >= questionList.length * 0.6) {
      isPassed = true;
    }
    String title = isPassed ? "Bravoo!! " : "Essaie encore! ";
    return AlertDialog(
      title: Text(
        title + "|Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Recommencer"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }

  _showHelpDialog() {
    String title = isGood ? "Bravo" : "Echec";
    return AlertDialog(
      title: Text(title),
      clipBehavior: Clip.antiAlias,
      actions: [
        ElevatedButton(
            onPressed: (() {
              Navigator.pop(context);
              setState(() {
                selectedAnswer = null;
                currentQuestionIndex++;
                isGood = false;
              });
            }),
            child: const Text('Continue'))
      ],
    );
  }
}
