import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //banner图
  var swiperData;
  var swiperDateList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            _getSearchContainer(),
            SwiperDiy(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: ScreenUtil().setHeight(200),
                  width: ScreenUtil().setWidth(200),
                  child: Column(
                    children: [
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.stethoscope),
                          color: Color(0xff4F77E1),
                          onPressed: () {
                            print("Pressed");
                          }),
                      Container(
                        child: Text('科学诊断'),
                      )
                    ],
                  ),
                  //  decoration: BoxDecoration(color: Color(0xff666666)),
                ),
                Container(
                  height: ScreenUtil().setHeight(200),
                  width: ScreenUtil().setWidth(200),
                  child: Column(
                    children: [
                      IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.plus),
                          color: Color(0xff4F77E1),
                          onPressed: () {
                            print("Pressed");
                          }),
                      Container(
                        child: Text('添加患者'),
                      )
                    ],
                  ),
                  //  decoration: BoxDecoration(color: Color(0xff666666)),
                ),

                // ListView(
                // children: [_getAppointment(), _getAppointment()],
                //)
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(80), 0.0, 0.0,
                  ScreenUtil().setHeight(30)),
              alignment: Alignment.centerLeft,
              child: Text(
                '预约信息',
                style: TextStyle(fontSize: ScreenUtil().setSp(32)),
              ),
            ),
            _getAppointment(),
            _getAppointment()
          ],
        ),
      ),
    );
  }

  Widget _getAppointment() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(150),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('张妈妈'),
              Text(
                '20201220 16:00-20201220 16:30',
                style: TextStyle(color: Color(0xff817F7F)),
              ),
              Text('新疆石河子医院402', style: TextStyle(color: Color(0xff817F7F)))
            ],
          ),
          Text(
            '接诊',
            style: TextStyle(color: Color(0xff1785C6)),
          )
        ],
      ),
    );
  }

  Widget _getSearchContainer() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(100),
      padding: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(30),
          ScreenUtil().setHeight(16),
          ScreenUtil().setWidth(30),
          ScreenUtil().setHeight(16)),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: TextField(
        onSubmitted: (value) {},
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            hintText: "请输入搜索内容",
            hintStyle: TextStyle(
                fontSize: ScreenUtil().setSp(24), color: Color(0xff878787)),
            filled: true,
            fillColor: Color(0xfff7f7f7),
            border: new OutlineInputBorder(
              //添加边框
              gapPadding: 10.0,
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(34)),
            ),
            prefixIcon: IconButton(
              padding: const EdgeInsets.all(0.0),
              icon: Image.asset('images/search.png',
                  height: ScreenUtil().setHeight(30),
                  width: ScreenUtil().setWidth(30)),
              onPressed: () {},
            ),
            contentPadding: const EdgeInsets.all(10.0)),
      ),
    );
  }
}

//轮播组件
class SwiperDiy extends StatelessWidget {
  List swiperDateList = ['images/banner1.jpg', 'images/banner2.png'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(364),
      width: ScreenUtil().setWidth(690),
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(30)),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(ScreenUtil().setHeight(30)))),
      child: Swiper(
        itemCount: swiperDateList.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(ScreenUtil().setHeight(30)),
              child: Image.asset(swiperDateList[index], fit: BoxFit.fitWidth));
        },
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
          color: Colors.white,
          activeColor: Colors.blueAccent,
        )),
        autoplay: true,
        autoplayDisableOnInteraction: true,
      ),
    );
    ;
  }
}
