import 'dart:convert';

import 'package:http/http.dart';

extension UtfResponseX on Response{
  String get utfBody => utf8.decode(bodyBytes);
}
