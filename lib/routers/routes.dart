import 'package:flutter/material.dart';
import './router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static String register = '/register';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(register, handler: registerHandler);
  }

  //void defineRoutes(FluroRouter router) {
  // it is also possible to define the route transition to use
  // router.define("users/:id", handler: usersHandler, transitionType: TransitionType.inFromLeft);
//  }
}
