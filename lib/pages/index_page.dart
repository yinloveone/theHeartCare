import 'package:flutter/material.dart';
import 'home_page.dart';
import 'mine_page.dart';
import 'patient_manage_page.dart';
import '../constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationIconView {
  final String _title;
  final Widget _activeIcon; //选中后的图片
  final Widget _icon; //正常显示的图片
  final BottomNavigationBarItem item;
  NavigationIconView({Key key, String title, Widget icon, Widget activeIcon})
      : _title = title,
        _activeIcon = activeIcon,
        _icon = icon,
        item = new BottomNavigationBarItem(
            icon: icon,
            activeIcon: activeIcon,
            title: Text(
              title,
              style: TextStyle(fontSize: ScreenUtil().setSp(24)),
            ),
            backgroundColor: Colors.white);
}

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<NavigationIconView> _navigationViews = [];
  List<Widget> _pages;
  PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController(
        initialPage: _currentIndex, keepPage: true, viewportFraction: 1.0);
    _pages = [HomePage(), PatientManagePage(), MinePage()];
  }
  //初始化数据

  _initData() {
    _navigationViews.clear();
    for (var i = 0; i < TabConfig.HOME_TAB_TITLES.length; i++) {
      NavigationIconView navigationIconView = NavigationIconView(
          title: TabConfig.HOME_TAB_TITLES[i],
          icon: Image.asset(
            TabConfig.HOME_TAB_NORMALICON[i],
            width: ScreenUtil().setWidth(44),
            height: ScreenUtil().setHeight(44),
          ),
          activeIcon: Image.asset(
            TabConfig.HOME_TAB_ACTIVEICON[i],
            width: ScreenUtil().setWidth(44),
            height: ScreenUtil().setHeight(44),
          ));
      _navigationViews.add(navigationIconView);
    }
  }

  @override
  Widget build(BuildContext context) {
    /**
     * 初始化ScreenUtils，宽和高是设计稿的尺寸之后在使用的时候
     * 便可以使用ScreenUtil().setSp(int size)
     * ScreenUtil().setWidth(int size)
     * ScreenUtil().setHeight(int size);
     * size 就是设计稿的上的控件的大小
     */
    //ScreenUtil.init(context, width: 750, height: 1370);
    _initData();
    BottomNavigationBar navigationBar = BottomNavigationBar(
      fixedColor: Color(AppColors.AppTabTextColor),
      items: _navigationViews
          .map((NavigationIconView navigationIconView) =>
              navigationIconView.item)
          .toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(microseconds: 200), curve: Curves.easeInOut);
        });
      },
    );

    return Scaffold(
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: navigationBar,
    );
  }
}
