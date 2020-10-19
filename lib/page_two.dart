import 'package:flutter/material.dart';

import 'routes/routes_manager.dart' as mRoutes;
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageTwo'),
        ),
        body: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, mRoutes.three);
          },
          child: Center(
            child: Text('PageTwo'),
          ),
        ),
      ),
    );
  }
}