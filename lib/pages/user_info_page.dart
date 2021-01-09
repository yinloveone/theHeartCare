import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../utils/gradient_button.dart';
import '../utils/custom_appbar.dart';

class UserInfoPage extends StatefulWidget {
  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar("个人信息", context),
        body: Container(
          child: _getUserInfoList(),
        ));
  }

  Widget _getUserInfoList() {
    // iconUrl = info.avatar;
    return Column(
      children: <Widget>[
        InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: Color(0XFFf3f3f3), width: 1.0))),
              padding: EdgeInsets.all(ScreenUtil().setWidth(35)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '头像',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(30),
                        color: Color(0xff333333)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          margin:
                              EdgeInsets.only(right: ScreenUtil().setWidth(17)),
                          child: ClipOval(
                              child: Image.asset('images/touxiang1.png',
                                  fit: BoxFit.fill,
                                  height: ScreenUtil().setHeight(100),
                                  width: ScreenUtil().setHeight(100)))),
                      InkWell(
                        //padding: const EdgeInsets.all(0),
                        child: Image.asset("assets/images/enter.png",
                            height: ScreenUtil().setHeight(30),
                            width: ScreenUtil().setWidth(30)),
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            )),
        _getListItem(
            '手机号',
            Text(
              '13838383838',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(28), color: Color(0xff999999)),
            )),
        _getListItem(
            '密码',
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: ScreenUtil().setWidth(17)),
                  child: Text(
                    '修改密码',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(28),
                        color: Color(0xff999999)),
                  ),
                ),
                InkWell(
                  // iconSize: ScreenUtil().setWidth(30),
                  // padding: EdgeInsets.all(1),
                  child: Image.asset("assets/images/enter.png",
                      height: ScreenUtil().setHeight(30),
                      width: ScreenUtil().setWidth(30)),
                )
              ],
            ),
            context: context,
            url: '/updatePasswordPage'),
        SizedBox(
          height: ScreenUtil().setHeight(330),
        ),
        GradientButton(
            onPressed: () {
              // Provider.of<UserProvider>(context, listen: false).getUserInfo();
              Navigator.pop(context);
            },
            height: ScreenUtil().setHeight(88),
            width: ScreenUtil().setWidth(400),
            colors: <Color>[
              Color(0xFF00C6FB),
              Color(0xFF0017FF),
            ],
            borderRadius: BorderRadius.circular(44),
            child: Text(
              '保存',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(32), color: Colors.white),
            ))
      ],
    );
  }

  Widget _getListItem(String leading, Widget endWidget,
      {BuildContext context, String url}) {
    return InkWell(
        onTap: () {
          if (null != url) {
            //Application.router.navigateTo(context, url);
          }
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                  top: BorderSide(color: Color(0XFFf3f3f3), width: 1.0))),
          padding: EdgeInsets.all(ScreenUtil().setWidth(35)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                leading,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(30), color: Color(0xff333333)),
              ),
              endWidget
            ],
          ),
        ));
  }
}
