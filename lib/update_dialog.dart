import 'package:flutter/material.dart';

import 'assets_util.dart';

///created by WGH
///on 2020/7/23
///description:版本更新提示弹窗
class UpdateDialog extends Dialog {
  final String upDateContent;
  final bool isForce;

  UpdateDialog({this.upDateContent, this.isForce});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 319,
            height: 370,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  AssetsUtil.getImagePath(
                      imageName: 'bg_update', suffix: 'png'),
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 110),
                        child: Text('发现新版本',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none)),
                      ),
                      Text(upDateContent,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              decoration: TextDecoration.none)),
                      Container(
                        width: 250,
                        height: 42,
                        margin: EdgeInsets.only(bottom: 15),
                        child: RaisedButton(
                            color: Colors.red,
                            shape: StadiumBorder(),
                            child: Text(
                              '立即更新',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            onPressed: () {
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Offstage(
              offstage: isForce,
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Image.asset(
                    AssetsUtil.getImagePath(
                        imageName: 'ic_update_close', suffix: 'png'),
                    width: 35,
                    height: 35,
                  )),
            ),
          )
        ],
      ),
    );
  }

  static showUpdateDialog(
      BuildContext context, String mUpdateContent, bool mIsForce) {
    return showDialog(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
              child: UpdateDialog(
                  upDateContent: mUpdateContent, isForce: mIsForce),
              onWillPop: _onWillPop);
        });
  }

  static Future<bool> _onWillPop() async {
    return false;
  }
}
