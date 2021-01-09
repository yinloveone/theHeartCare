import 'package:flutter/material.dart';
import '../utils/custom_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PatientManagePage extends StatefulWidget {
  @override
  _PatientManagePageState createState() => _PatientManagePageState();
}

class _PatientManagePageState extends State<PatientManagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('患者管理', context),
      body: Container(
        child: Column(
          children: [
            getPatientCard(),
            getPatientCard(),
            getPatientCard(),
          ],
        ),
      ),
    );
  }

  Widget getPatientCard() {
    return Container(
        width: ScreenUtil().setWidth(700),
        height: ScreenUtil().setHeight(200),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: ScreenUtil().setWidth(200),
              child: Column(
                children: [
                  Image.asset(
                    'images/touxiang.png',
                    height: ScreenUtil().setHeight(120),
                    width: ScreenUtil().setWidth(120),
                  ),
                  Text('患者001')
                ],
              ),
            ),
            Container(
              width: ScreenUtil().setWidth(400),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('上次看诊时间：2020.05.20'),
                    Container(
                        child: Row(
                      children: [
                        Text('45岁'),
                        IconButton(
                            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(FontAwesomeIcons.female),
                            color: Color(0xff4F77E1),
                            onPressed: () {
                              print("Pressed");
                            }),
                      ],
                    )),
                  ]),
            ),
            Text(
              '病历',
              style: TextStyle(
                  color: Color(0xff1785C6), fontSize: ScreenUtil().setSp(32)),
            )
          ],
        ));
  }
}
