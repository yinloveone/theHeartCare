import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_appbar.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('消息', context),
      body: Container(
        child: Column(
          children: [getTileList(), getMessageCard()],
        ),
      ),
    );
  }

  Widget getTileList() {
    return Container(
      width: ScreenUtil().setWidth(400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '全部',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('系统消息'),
          Text('预约提醒'),
          Text('回访提醒'),
        ],
      ),
    );
  }

  Widget getMessageCard() {
    return Container(
      width: ScreenUtil().setWidth(750),
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '系统：',
            style: TextStyle(fontSize: ScreenUtil().setSp(32)),
          ),
          Container(
            width: ScreenUtil().setWidth(700),
            height: ScreenUtil().setHeight(200),
            color: Color(0xfffF4F4F4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('明月几时有，把酒问青天。不知天上宫阙，今夕是何年。'),
                Text(
                  '2020/05/20 18:40',
                  style: TextStyle(color: Color(0xff817F7F)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
