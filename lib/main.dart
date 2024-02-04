import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0D1020),
          scaffoldBackgroundColor: Color(0xFF0D1020),
          textTheme: TextTheme(bodyText2: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
          ),
      ),
      home: InputPage(),
    );
  }
}
