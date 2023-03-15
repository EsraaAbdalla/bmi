
// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
 //const  BMIResultScreen({Key? key, required this.result, required this.isMale, required this.age}) : super(key: key);

  final int result;
  final bool isMale;
  final int age;


  BMIResultScreen({
    required this.result,
    required this.age,
    required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ) ,
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
              Text(
                'Gender :${isMale ? 'Male' : 'Female'}',
                style: TextStyle(
                  fontWeight:FontWeight.bold ,
                  fontSize: 25.0,
                ),
              ),
              Text(
                'Result :$result ',
                style: TextStyle(
                  fontWeight:FontWeight.bold ,
                  fontSize: 25.0,
                ),
              ),
              Text(
                'Age : $age ',
                style: TextStyle(
                  fontWeight:FontWeight.bold ,
                  fontSize: 25.0,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
