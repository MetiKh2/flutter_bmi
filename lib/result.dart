import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({super.key});
  static double result=0;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'نتیجه شاخص بدنی شما',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
        child: Column(
          children: [
            Image.asset('images/BMI.png'),
            SizedBox(height: 20,),
            Text('${Result.result.toStringAsFixed(2)}',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 24
            ),),
            SizedBox(height: 20,),
            Text('',style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
    );
  }
}