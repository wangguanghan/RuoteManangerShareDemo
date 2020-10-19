import 'package:flutter/material.dart';
import 'routes/routes_manager.dart' as mRoutes;
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageOne'),
        ),
        body: Center(
          child: GestureDetector(child: Text('PageOne'),
          onTap: (){
            // Navigator.pushReplacementNamed(context, mRoutes.two);
            // Navigator.popAndPushNamed(context, mRoutes.two);
            Navigator.pushNamed(context, mRoutes.two);
          },),
        ),
      ),
    );
  }
}