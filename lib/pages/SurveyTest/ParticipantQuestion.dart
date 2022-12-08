import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parkinsons_app/pages/RhythmTest/RhythmIntro.dart';
import 'package:parkinsons_app/pages/RhythmTest/rhythm.dart';
import 'package:parkinsons_app/pages/SurveyTest/MDS-UPDRS.dart';
import 'package:parkinsons_app/services/Util.dart';
import 'package:parkinsons_app/services/auth.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ParticipantQuestion extends StatefulWidget {
  String routeNameOfNextWidget;
  ParticipantQuestion({required this.routeNameOfNextWidget});


  @override
  _ParticipantQuestionState createState() => _ParticipantQuestionState();
}

//build a class for participant questions
class _ParticipantQuestionState extends State<ParticipantQuestion> {
  //set basic variables
  int selectedRadio = 0;
  String participantAnswer = "";

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("调查"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
              width: double.infinity,
              height: screenSize.height,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: screenSize.height * 0.025),
                    buildInstructions(screenSize),
                    SizedBox(height: screenSize.height * 0.025),
                    Divider(thickness: 2.0,),
                    buildQuestions(context),
                    Divider(
                      thickness: 2.0,
                    ),
                    SizedBox(height: screenSize.height * 0.025),
                    buildNextButton(context, screenSize)
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget buildInstructions(Size screenSize) {
    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.025,
        ),
        Text(
          AppLocalizations.of(context)!.survey_participant_title,
          // "Who is filing out this survey?",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildQuestions(context) {

    //choices that the user can pick
    String choice1 = AppLocalizations.of(context)!.survey_participant_patient;
    String choice2 = AppLocalizations.of(context)!.survey_participant_caregiver;
    String choice3 = AppLocalizations.of(context)!.survey_participant_pc;

    return Column(
      children: [
        RadioListTile(
            title: Text(choice1),
            value: 1,
            groupValue: selectedRadio,
            onChanged: (value) {
              setState(() {
                participantAnswer = choice1;
                selectedRadio = value as int;
              });
            }),
        RadioListTile(
            title: Text(choice2),
            value: 2,
            groupValue: selectedRadio,
            onChanged: (value) {
              setState(() {
                participantAnswer = choice2;
                selectedRadio = value as int;
              });
            }),
        RadioListTile(
            title: Text(choice3),
            value: 3,
            groupValue: selectedRadio,
            onChanged: (value) {
              setState(() {
                participantAnswer = choice3;
                selectedRadio = value as int;
              });
            }),
      ],
    );
  }

  Widget buildNextButton(BuildContext context, Size screenSize) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.025,
              horizontal: screenSize.width * 0.2,
            ),
            side: BorderSide(color: Colors.red)),
        child: Text(
            AppLocalizations.of(context)!.survey_next,
            // "Next",
            style: TextStyle(fontSize: 15, color: Colors.red)),
        onPressed: handleNextPressed);
  }

  void handleNextPressed() {
    if(participantAnswer != ""){
      Navigator.of(context).pushNamed(widget.routeNameOfNextWidget,arguments: {'participantAnswer':participantAnswer});
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("请回答上述问题"),));
    }
  }

}
