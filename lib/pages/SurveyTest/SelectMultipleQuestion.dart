<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:parkinsons_app/pages/SurveyTest/Question.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SelectMultipleQuestion extends StatefulWidget with Question {
  String question;
  List<String> choices;
  int questionNumber;
  bool selected = true;
  SelectMultipleQuestion({required this.question, required this.questionNumber,required this.choices});

  @override
  _SelectMultipleQuestionState createState() => _SelectMultipleQuestionState();
}

//build multiple question class
class _SelectMultipleQuestionState extends State<SelectMultipleQuestion> {

  List<bool> radioSates= [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i = 0;i < widget.choices.length;i++){
      radioSates.add(false);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.survey_question + widget.questionNumber.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
              child: Text(
                widget.question,
                style: TextStyle(fontSize: 15),
              )),
          Divider(
            thickness: 2.0,
          ),
          Column(
              children: List.generate(widget.choices.length, (index) {
                CheckboxListTile tile = CheckboxListTile(
                    title: Text(widget.choices[index]),
                    value: radioSates[index],
                    onChanged: (value) {
                      setState(() {
                      //  bool inverse = !(radioSates[index]);
                      //  radioSates[index] = inverse;
                        if(radioSates[index]){
                          radioSates[index] = false;
                          widget.answer = widget.answer.replaceAll(RegExp(widget.choices[index]+','), '');
                          print(widget.answer);

                        }
                        else{
                          radioSates[index] = true;
                          widget.answer += widget.choices[index]+',';
                          print(widget.answer);
                        }

                        print(value);
                      });
                    });
                return tile;
              })),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:parkinsons_app/pages/SurveyTest/Question.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SelectMultipleQuestion extends StatefulWidget with Question {
  String question;
  List<String> choices;
  int questionNumber;
  bool selected = true;
  SelectMultipleQuestion({required this.question, required this.questionNumber,required this.choices});

  @override
  _SelectMultipleQuestionState createState() => _SelectMultipleQuestionState();
}

//build multiple question class
class _SelectMultipleQuestionState extends State<SelectMultipleQuestion> {

  List<bool> radioSates= [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i = 0;i < widget.choices.length;i++){
      radioSates.add(false);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.survey_question + widget.questionNumber.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
              child: Text(
                widget.question,
                style: TextStyle(fontSize: 15),
              )),
          Divider(
            thickness: 2.0,
          ),
          Column(
              children: List.generate(widget.choices.length, (index) {


                CheckboxListTile tile = CheckboxListTile(
                    title: Text(widget.choices[index]),
                    value: radioSates[index],
                    onChanged: (value) {
                      setState(() {
                      //  bool inverse = !(radioSates[index]);
                      //  radioSates[index] = inverse;
                        if(radioSates[index]){
                          radioSates[index] = false;
                          widget.answer = widget.answer.replaceAll(RegExp(widget.choices[index]+','), '');
                          print(widget.answer);

                        }
                        else{
                          radioSates[index] = true;
                          widget.answer += widget.choices[index]+',';
                          print(widget.answer);
                        }

                        print(value);
                      });
                    });
                return tile;
              })),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
>>>>>>> 144206f8f75ff60fec0090c4d53fcf72430fcccc
