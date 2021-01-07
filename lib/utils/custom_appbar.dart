import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customAppbar(String title, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    // primary: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Image.asset("images/back.png",
          height: ScreenUtil().setHeight(30), width: ScreenUtil().setWidth(30)),
      onPressed: () {
        print('返回上一页');
        Navigator.pop(context);
      },
    ),
    title: Text(
      title,
      style:
          TextStyle(fontSize: ScreenUtil().setSp(36), color: Color(0xff333333)),
    ),
    centerTitle: true,
  );
}
