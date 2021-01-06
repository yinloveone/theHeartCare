/**
 * 常量类
 */
class AppColors {
  static const AppBarColor = 0xff303030;
  static const AppTabTextColor = 0xff0017FF;
}
//底部导航栏的一些常量

class TabConfig {
  static const HOME_TAB_TITLES = const ["首页", "患者管理", "我的"];

  /**
   * 未按下时的按钮
   */
  static const HOME_TAB_NORMALICON = const [
    "images/home.png",
    "images/product.png",
    "images/user.png",
  ];
  /**
   * 按下时的按钮
   */
  static const HOME_TAB_ACTIVEICON = const [
    "images/home1.png",
    "images/product1.png",
    "images/user1.png",
  ];
}

//记录app更新的时间
class Constants {
  static final String timeStart = "timeStart";
}
