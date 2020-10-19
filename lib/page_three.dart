import 'package:flutter/material.dart';
import 'routes/routes_manager.dart' as mRoutes;

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageThree'),
        ),
        body: GestureDetector(
          onTap: (){
            Navigator.pushNamedAndRemoveUntil(context, mRoutes.four, ModalRoute.withName(mRoutes.one));
          },
          child: Center(
            child: Text('PageThree'),
          ),
        ),
      ),
    );
  }
}