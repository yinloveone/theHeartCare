import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(''),),
      body: Container(
        child: Column(
          children: [
            getMianCard(),
            Container(
              width: ScreenUtil().setWidth(750),
              height: ScreenUtil().setHeight(10),
              color: Color(0xffF1F1F1),
            ),
            getListItem(
              '资质认证',
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.star),
                  color: Color(0xff1785C6),
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
            getListItem(
              '联系客服',
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.envelope),
                  color: Color(0xffDA8C1F),
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
            getListItem(
              '个人信息',
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.user),
                  color: Color(0xff4F77E1),
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
            Container(
              width: ScreenUtil().setWidth(750),
              height: ScreenUtil().setHeight(10),
              color: Color(0xffF1F1F1),
            ),
            getListItem(
              '体验反馈',
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.clipboard),
                  color: Color(0xff521178),
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
            getListItem(
              '健康档案',
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.fileAlt),
                  color: Color(0xff048690),
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget getMianCard() {
    return Container(
        width: ScreenUtil().setWidth(700),
        height: ScreenUtil().setHeight(200),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: ScreenUtil().setWidth(200),
              child: Image.asset(
                'images/touxiang1.png',
                height: ScreenUtil().setHeight(150),
                width: ScreenUtil().setWidth(150),
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(400),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '小明',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(36),
                          color: Color(0xff4F77E1)),
                    ),
                    Text(
                      '工号：20201228',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(28),
                          color: Color(0xff817F7F)),
                    ),
                  ]),
            ),
            IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.cog),
                color: Color(0xff4F77E1),
                onPressed: () {
                  print("Pressed");
                }),
          ],
        ));
  }

  Widget getListItem(String itemName, Widget faIcon) {
    return InkWell(
        onTap: () {},
        child: Container(
            height: ScreenUtil().setHeight(120),
            width: ScreenUtil().setWidth(750),
            // margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(16)),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: <Widget>[
                Expanded(flex: 2, child: Container(child: faIcon)),
                Expanded(
                    flex: 6,
                    child: Container(
                        child: Text(
                      itemName,
                      style: TextStyle(fontSize: ScreenUtil().setSp(30)),
                    ))),
                Expanded(
                    flex: 1,
                    child: Container(
                        height: ScreenUtil().setHeight(60),
                        width: ScreenUtil().setWidth(60),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/enter.png'),
                        )))
              ],
            )));
  }
}
