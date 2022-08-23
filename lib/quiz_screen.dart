// ignore_for_file: prefer_const_constructors, unused_import, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:quiz_app1/question_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question>questionList=getQuestions();
    int currentQuestionIndex=0;
    int score=0;
    Answers? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    // define the datas
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 11, 112),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "QCM Stat-Proba",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            _questionWidget(),
             _answerList(),
             _nextButton(),
             SizedBox(height: 50.0,),
             Text('Made with ♥ by M&H'),
            //  Text('Good luck', style: TextStyle(color: Colors.white,)),
          ],
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
          child: Text("Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            color:Colors.orangeAccent,
            borderRadius: BorderRadius.circular(16)
          ),
            width: double.infinity,
          
            child: Text(
             questionList[currentQuestionIndex].questionText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ))
      ],
    );
  }
  _answerList(){
    return Column(
      children: 
        questionList[currentQuestionIndex]
        .answerList
        .map(
          (e)=> _answerButton(e),
        )
        .toList(),
    );
  }
  Widget _answerButton(Answers answer){
    bool isSelected=answer==selectedAnswer;
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(child: Text(answer.answerText),
      style: ElevatedButton.styleFrom(
        shape:  StadiumBorder(),
        primary:isSelected? Colors.orangeAccent:Colors.white,
        onPrimary:isSelected? Colors.white:Colors.black,
      ),
      
      onPressed:(){
        if( selectedAnswer==null){
          if(answer.isCorrect){
            score++;
          }
        }
        setState(() {
          selectedAnswer=answer;
        });
      } ),
      
    );
  }
  _nextButton(){
    bool isLastQuestion=false;
    if(currentQuestionIndex==questionList.length-1){
      isLastQuestion=true;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.5,
      height: 48,
      child: ElevatedButton( child: Text("Next"),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        primary: Colors.blueAccent,
        onPrimary: Colors.white,
      ),
      onPressed: (){
        if(isLastQuestion){

          showDialog(context: context, builder: (_)=>
            _showScoreDialog()
          );
        }else{
          setState(() {
            selectedAnswer=null;
            currentQuestionIndex++;
          });
        }
      }),
    );
  }
  _showScoreDialog(){
    bool isPassed=false;
    if(score>=questionList.length*0.6){
      isPassed=true;
    }
    String title=isPassed?"Passed":"Failed";
    return AlertDialog(
      title: Text(
        title+"|Score is $score",
      style: TextStyle(color:isPassed?Colors.green:Colors.redAccent),
      ),
      content: ElevatedButton(child: const Text("Restart"),
      onPressed: (){
        Navigator.pop(context);
        setState((){
          currentQuestionIndex=0;
          score=0;
          selectedAnswer=null;
        });
      },),
    );
  }
  
}
