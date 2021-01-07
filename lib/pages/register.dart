import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/gradient_button.dart';

class Register extends StatelessWidget {
  Register({String id});
  String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Container(
            width: ScreenUtil().setWidth(750),
            height: ScreenUtil().setHeight(500),
            decoration: BoxDecoration(
              color: Color(0xff4F77E1),
              borderRadius:
                  new BorderRadius.vertical(bottom: Radius.elliptical(60, 60)),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: TextField(
                //controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.phone),
                  labelText: '请输入你的用户名',
                  //helperText: '请输入注册的手机号',
                ),
                autofocus: false,
              )),
          Container(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: TextField(
                //controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.lock),
                  labelText: '请输入密码',
                  //helperText: '请输入注册的手机号',
                ),
                autofocus: false,
              )),
          Container(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 20),
              child: TextField(
                //controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  icon: Icon(Icons.lock),
                  labelText: '再次输入密码',
                  //helperText: '请输入注册的手机号',
                ),
                autofocus: false,
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                  width: ScreenUtil().setWidth(300),
                  height: ScreenUtil().setHeight(88.0),
                  child: TextField(
                    //controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      //icon: Icon(Icons.lock),
                      labelText: '验证码',
                      //helperText: '请输入注册的手机号',
                    ),
                    autofocus: false,
                  )),
              GradientButton(
                child: Text(
                  '获取短信验证码',
                  style: TextStyle(fontSize: ScreenUtil().setSp(28)),
                ),
                width: ScreenUtil().setWidth(250),
                height: ScreenUtil().setHeight(80.0),
                colors: <Color>[
                  Color(0xFF00C6FB),
                  Color(0xFF0017FF),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 50, 0.0, 0.0),
            child: GradientButton(
              child: Text(
                '注册',
                style: TextStyle(fontSize: ScreenUtil().setSp(32)),
              ),
              width: ScreenUtil().setWidth(480),
              height: ScreenUtil().setHeight(88.0),
              colors: <Color>[
                Color(0xFF00C6FB),
                Color(0xFF0017FF),
              ],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          )
        ],
      )),
    );
  }
}
