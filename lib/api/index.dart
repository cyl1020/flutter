import 'package:dio/dio.dart';

import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import './dio.dart';


Future getHomeMultiData() async {
  print('开始获取首页轮播图数据...');
  Response response;
  Dio dio = new Dio();
  response = await dio.get(servicePath["homeMultiData"]);
  try {
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常...');
    }
  } catch (e) {
    print('error:' + e);
  }
}
