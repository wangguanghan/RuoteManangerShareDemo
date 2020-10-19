import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_demo/hero_two.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;
import 'assets_util.dart';

class HeroOne extends StatefulWidget {
  @override
  HeroOneState createState() => new HeroOneState();
}

class HeroOneState extends State<HeroOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroOne'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => new HeroTwo()));
            },
            child: Hero(
              tag: 'myHero',
              child: Image.asset(
                AssetsUtil.getImagePath(imageName: 'ic_img_avatar', suffix: 'png'),
                width: 135,
                height: 135,
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    timeDilation = 5.0;
  }
}