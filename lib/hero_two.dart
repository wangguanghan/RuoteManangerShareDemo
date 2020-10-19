import 'package:flutter/material.dart';

import 'assets_util.dart';

class HeroTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroTwo'),
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        child: Hero(
          tag: 'myHero',
          child: Image.asset(AssetsUtil.getImagePath(
              imageName: 'ic_img_avatar', suffix: 'png'),fit: BoxFit.fill,),
        ),
      ),
    );
  }
}