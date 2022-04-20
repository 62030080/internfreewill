// To parse this JSON data, do
//
//     final coinRank = coinRankFromJson(jsonString);

import 'dart:convert';

CoinRank coinRankFromJson(String str) => CoinRank.fromJson(json.decode(str));

String coinRankToJson(CoinRank data) => json.encode(data.toJson());

class CoinRank {
  CoinRank({
    required this.status,
    required this.data,
  });

  String status;
  Data data;

  factory CoinRank.fromJson(Map<String, dynamic> json) => CoinRank(
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.price,
    required this.timestamp,
  });

  String price;
  int timestamp;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    price: json["price"],
    timestamp: json["timestamp"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
    "timestamp": timestamp,
  };
}
