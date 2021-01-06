import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/gradient_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(width: 411.5, child: Image.asset("images/img1.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 40,
              ),
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.userAlt),
                  color: Color(0xff4F77E1),
                  onPressed: () {
                    print("Pressed");
                  }),
              Container(
                width: 300,
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  '输入用户账号',
                  style: TextStyle(
                    color: Color(0xffDAD3D3),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffe5e5e5)))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 40,
              ),
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.lock),
                  color: Color(0xff4F77E1),
                  onPressed: () {
                    print("Pressed");
                  }),
              Container(
                width: 300,
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  '输入登录密码',
                  style: TextStyle(
                    color: Color(0xffDAD3D3),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffe5e5e5)))),
              )
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.fromLTRB(0.0, 30.0, 20.0, 0.0),
            child: Text('没有账号？去注册', style: TextStyle(color: Color(0xff4F77E1))),
          ),
          Container(
            height: 50,
          ),
          Container(
            child: GradientButton(
              child: Text(
                '登录',
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
      ),
    );
  }
}
