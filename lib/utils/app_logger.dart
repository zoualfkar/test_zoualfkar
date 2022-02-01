

import 'package:zoualfkar/constant/constants.dart';

class AppLog {
  String? prefix;

  AppLog(String classname) {
    prefix = '[$classname]';
  }
  void call(params) {
    if(IsDevelopingMode)
    print(prefix! + ' $params');
  }
}
