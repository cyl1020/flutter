import 'package:flutter/material.dart';
import 'package:flutter_cyl/pages/Data.dart';
import 'package:flutter_cyl/pages/DateDemo.dart';
import 'package:flutter_cyl/pages/FormDemo.dart';
import 'package:flutter_cyl/pages/Search.dart';
import 'package:flutter_cyl/pages/TabBarController.dart';
import 'package:flutter_cyl/pages/Tabs.dart';
import 'package:flutter_cyl/pages/Form.dart';
import 'package:flutter_cyl/pages/users/Login.dart';
import 'package:flutter_cyl/pages/users/RegisterFirst.dart';
import 'package:flutter_cyl/pages/users/RegisterSecond.dart';
import 'package:flutter_cyl/pages/users/RegisterThird.dart';
import 'package:flutter_cyl/pages/Swiper.dart';

final routes = {
  '/': (context) => Tabs(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/formDemo': (context) => FormDemoPage(),
  '/date': (context) => DatePage(),
  '/swiper': (context) => SwiperPage(),
  '/data': (context) => HttpPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
