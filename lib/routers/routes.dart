import 'package:flutter/material.dart';
import './router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static String register = '/register';
  static String patientInfo = '/patient_info_page';
  static String messagePage = '/message_page';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(register, handler: registerHandler);
    router.define(patientInfo, handler: patientInfoHandler);
    router.define(messagePage, handler: messageHandler);
  }
}
