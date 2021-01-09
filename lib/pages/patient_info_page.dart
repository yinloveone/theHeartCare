import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PatientInfoPage extends StatefulWidget {
  @override
  _PatientInfoPageState createState() => _PatientInfoPageState();
}

class _PatientInfoPageState extends State<PatientInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: customAppbar("患者详情", context),
      body: Container(
        child: Column(
          children: [
            getPatientInfo(),
            Container(
              width: ScreenUtil().setWidth(750),
              height: ScreenUtil().setHeight(10),
              color: Color(0xffF1F1F1),
            ),
            getAcheInfo(),
            Container(
              width: ScreenUtil().setWidth(750),
              height: ScreenUtil().setHeight(10),
              color: Color(0xffF1F1F1),
            ),
            getResult()
          ],
        ),
      ),
    );
  }

  Widget getPatientInfo() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: ScreenUtil().setWidth(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('李金花'),
                IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(FontAwesomeIcons.neuter),
                    color: Color(0xffDA8C1F),
                    onPressed: () {
                      print("Pressed");
                    }),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('电话：'),
                  Text(
                    '13838383838',
                    style: TextStyle(color: Color(0xff4F77E1)),
                  )
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('查看更多', style: TextStyle(color: Color(0xff4F77E1))),
              IconButton(
                  // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                  icon: FaIcon(FontAwesomeIcons.angleDoubleRight),
                  color: Color(0xff4F77E1),
                  onPressed: () {
                    print("Pressed");
                  }),
            ],
          ),
        ],
      ),
    );
  }

  Widget getAcheInfo() {
    return Container(
      height: ScreenUtil().setHeight(400),
      width: ScreenUtil().setWidth(700),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '病情描述：',
            style: TextStyle(fontSize: ScreenUtil().setSp(32)),
          ),
          Container(
            child: Text('经常胸痛、等等'),
            padding: EdgeInsets.all(10.0),
            height: ScreenUtil().setHeight(300),
            width: ScreenUtil().setWidth(700),
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              //设置四周边框
              border: new Border.all(width: 1, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }

  Widget getResult() {
    return Container(
      height: ScreenUtil().setHeight(400),
      width: ScreenUtil().setWidth(700),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '检查结果：',
            style: TextStyle(fontSize: ScreenUtil().setSp(32)),
          ),
          Image.asset('images/result.png')
        ],
      ),
    );
  }
}
