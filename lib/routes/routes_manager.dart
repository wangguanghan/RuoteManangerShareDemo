import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';
import 'package:flutter_demo/page_four.dart';
import 'package:flutter_demo/page_one.dart';
import 'package:flutter_demo/page_three.dart';
import 'package:flutter_demo/page_two.dart';


final String home = '/PageHome';
final String one = '/PageOne';
final String two = '/PageTwo';
final String three = '/PageThree';
final String four = '/PageFour';
final routes={
  home:(context)=>MyHomePage(title: 'Flutter Demo Home Page'),
  one:(context)=>PageOne(),
  two:(context)=>PageTwo(),
  three:(context)=>PageThree(),
  four:(context)=>PageFour(),
};
class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转错误'),
        centerTitle: true,
      ),
    );
  }
}