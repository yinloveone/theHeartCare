import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/login.dart';

//var usersHandler =
// Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
// return Login(params["id"][0]);
//});

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Login(); //返回登录页面
});
