import 'package:flutter/material.dart';
import 'package:flutter_demo/application.dart';
import 'package:flutter_demo/dialog_page.dart';
import 'package:flutter_demo/my_text.dart';
import 'package:flutter_demo/router/routes.dart';
import 'hero_one.dart';
import 'routes/routes_manager.dart' as mRoutes;
import 'package:fluro/fluro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //初始化路由
    // final router = Router();
    // Routes.configureRoutes(router);
    // Application.router = router;
    return MaterialApp(
      title: 'Flutter Demo',
      // onGenerateRoute: Application.router.generator,
      //初始默认路由页面
      initialRoute: mRoutes.home,
      //注册路由表
      routes: mRoutes.routes,
      //页面找不到时加载
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => mRoutes.UnknownPage()),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool changePage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => new DialogPage()));
                },
                child: Text('Dialog点击外部区域弹窗消失问题')),
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => new HeroOne()));
                },
                child: Text('hero路由切换动画介绍')),
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => new MyText()));
                },
                child: Text('Text展开-收起')),
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.pushNamed(context, mRoutes.one);
                },
                child: Text('Navigator-命名路由')),
            FlatButton(
                color: Colors.red,
                onPressed: () {
                  Application.router.navigateTo(context, Routes.one);
                },
                child: Text('Fluro路由框架')),
          ],
        ),
      ),
    );
  }
}
