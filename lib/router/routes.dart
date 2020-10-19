import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';
import 'package:flutter_demo/page_four.dart';
import 'package:flutter_demo/page_one.dart';
import 'package:flutter_demo/page_three.dart';
import 'package:flutter_demo/page_two.dart';
import 'package:fluro/fluro.dart';

class Routes { //配置类
  static final String home = '/';
  static final String one = '/PageOne';
  static final String two = '/PageTwo';
  static final String three = '/PageThree';
  static final String four = '/PageFour';
  //静态方法
  static void configureRoutes(Router router){//路由配置
    //找不到路由
    router.notFoundHandler = pageEmptyHandler;
    //整体配置
    router.define(home, handler: pageHomeHandler);
    router.define(one, handler: pageOneHandler);
    router.define(two, handler: pageTwoHandler);
    router.define(three, handler: pageThreeHandler);
    router.define(four, handler: pageFourHandler);

  }
}
//主页面
var pageHomeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return MyHomePage(title: 'Flutter Demo Home Page');
    });
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