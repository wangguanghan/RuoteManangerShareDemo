import 'package:flutter/material.dart';
import 'package:flutter_demo/update_dialog.dart';

class DialogPage extends StatefulWidget {
  @override
  DialogPageState createState() => new DialogPageState();
}

class DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: FlatButton(onPressed: (){
          UpdateDialog.showUpdateDialog(context, '1.修复已知bug\n2.优化用户体验', false);
        }, child: Text('data1')),
      ),
    );
  }
}
