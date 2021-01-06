import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/register.dart';

var registerHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Register(); //返回登录页面
});

/*var demoRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String message = params["message"]?.first;
  String colorHex = params["color_hex"]?.first;
  String result = params["result"]?.first;
  Color color = Color(0xFFFFFFFF);
  if (colorHex != null && colorHex.length > 0) {
    color = Color(ColorHelpers.fromHexString(colorHex));
  }
  return DemoSimpleComponent(message: message, color: color, result: result);
});*/
