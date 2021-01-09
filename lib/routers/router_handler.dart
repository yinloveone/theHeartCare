import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:theHeartCare/pages/patient_info_page.dart';
import '../pages/register.dart';
import '../pages/message_page.dart';

var registerHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Register(); //注册页面
});
var patientInfoHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PatientInfoPage(); //患者详情页面
});
var messageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MessagePage(); //患者详情页面
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
