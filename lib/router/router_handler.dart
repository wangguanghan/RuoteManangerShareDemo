import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/page_four.dart';
import 'package:flutter_demo/page_one.dart';
import 'package:flutter_demo/page_three.dart';
import 'package:flutter_demo/page_two.dart';

//A页面
var pageOneHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PageOne();
});
//B页面
var pageTwoHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PageTwo();
});
//C页面
var pageThreeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PageThree();
});
//D页面
var pageFourHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PageFour();
});

//空页面（即错误页面）
var pageEmptyHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return UnknownPage();
});

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转错误啊飒飒的'),
        centerTitle: true,
      ),
    );
  }
}