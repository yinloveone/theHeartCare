import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/index_page.dart';
import 'package:fluro/fluro.dart';
import 'routers/application.dart';
import 'routers/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool loginState = true;
  _MyAppState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  void initState() {
    super.initState();
    //_validateLogin();
  }

  //登录验证
  /* Future _validateLogin() async {
    Future<dynamic> future = Future(() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString("user_token");
    });
    future.then((val) {
      if (val == null) {
        setState(() {
          loginState = false;
        });
      } else {
        setState(() {
          loginState = true;
        });
      }
    }).catchError((_) {
      print("catchError");
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(750, 1370),
        allowFontScaling: false,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: '胸痛管家',
            theme: ThemeData(
              primaryColor: Colors.white,
            ),
            //onGenerateRoute: Application.router.generator,
            home: loginState ? IndexPage() : Login()));
  }
}
