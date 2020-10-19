import 'package:flutter/material.dart';

import 'routes/routes_manager.dart' as mRoutes;
class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageFour'),
        ),
        body: GestureDetector(
          child: Center(
            child: Text('PageFour'),
          ),
        ),
      ),
    );
  }
}