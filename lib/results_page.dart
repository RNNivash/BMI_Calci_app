import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage ({required this.bmiResult,required this.resultText,required this.interpretaion});
  final String bmiResult;
  final String resultText;
  final String interpretaion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1020),
        title: Text('BMI CALCULATOR',
        ),
      ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
         Expanded(
           child: Container(
             padding: EdgeInsets.all(15.0),
             alignment: Alignment.bottomLeft,
             child: Text(
               'Your Result',
               style: KTittleTextStyle,
             ),
           ),
         ),
         Expanded(
           flex: 5,
             child: ReusableCard(
             colour: KActiveCardColor,
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Text(resultText.toUpperCase(),
                   style: KResultTextStyle,
                   ),
                   Text(bmiResult,
                    style: KBMITextStyle,
                   ),
                   Text(interpretaion,
                   textAlign: TextAlign.center,
                   style: KBodyTextStyle,
                   ),
                 ],
               ),
         ),
         ),
         BottomButton(
           buttonTitle: 'RE-CALCULATE',
           onTap: (){
           Navigator.pop(context);
         },
         ),
       ],
     ),
    );
  }
}
