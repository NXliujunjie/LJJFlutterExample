import 'dart:convert';

import 'package:dio/dio.dart';

void DioHttps() async {
  Response response;
  Dio dio = new Dio();
  // var url = 'http://t.weather.sojson.com/api/weather/city/101030100';
  var url = 'http://api.map.baidu.com/telematics/v3/weather';
  //response = await dio.get(url);
  //http://t.weather.sojson.com/api/weather/city/101030100
   response = await dio.post(
    url, 
    data: {
      'location':'shanghai',
      'output':'json',
      'ak':'5slgyqGDENN7Sy7pw29IUvrZ'
    });
    print('请求的数据${response.data.toString()}');
}