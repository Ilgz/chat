// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    required this.access,
    required this.refresh,
  });

  final String access;
  final String refresh;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
    access: json["access"],
    refresh: json["refresh"],
  );

  Map<String, dynamic> toJson() => {
    "access": access,
    "refresh": refresh,
  };
}
