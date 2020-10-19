import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
class MyText extends StatefulWidget {
  @override
  MyTextState createState() => new MyTextState();
}

class MyTextState extends State<MyText> {
  String mStr = '';
  String mStates0 = '展开';
  String mStates1 = '收起';
  bool _isShowMoreText = false;
  double mSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyText'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _isShowMoreText
                ? Text(
                    mStr,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    maxLines: 3,
                  )
                : Text(
                    mStr,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _isShowMoreText = !_isShowMoreText;
                  });
                },
                child: Text(_isShowMoreText ? mStates0:mStates1,
                    style: TextStyle(fontSize: 15, color: Colors.blue)))
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero,(){
      mSize = MediaQuery.of(context).size.width;
      setState(() {
        mStr = 'aaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbcccccccccccccccccccccccccccaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbccccccccccccccccccccccccccc11111111111111111111111111,22222222222222222222222222222,333333333333333333333333333333';
        isExpansion(mStr);
      });
    });
  }

  bool isExpansion(String content) {
    TextPainter _textPainter = TextPainter(
        maxLines: 3,
        text: TextSpan(
          text: content,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        textDirection: TextDirection.ltr)
      ..layout(maxWidth: mSize);
    if (_textPainter.didExceedMaxLines) {
      _isShowMoreText = true;
      return true;
    } else {
      return false;
    }
  }

}
