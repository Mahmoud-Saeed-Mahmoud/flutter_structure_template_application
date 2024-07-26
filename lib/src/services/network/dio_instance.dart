import 'package:dio/dio.dart';

import '../../extensions/int_extension.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: '',
    connectTimeout: 5000.secondsDuration,
    receiveTimeout: 3000.secondsDuration,
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ),
);
