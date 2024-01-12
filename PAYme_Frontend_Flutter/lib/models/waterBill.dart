import 'dart:convert';

import 'package:flutter/rendering.dart';

WaterBill waterBillFromJson(String str) => WaterBill.fromJson(json.decode(str));

String waterBillToJson(WaterBill data) => json.encode(data.toJson());

class WaterBill {
  WaterBill({
    required this.id,
    required this.organization,
    required this.billPeriod,
    required this.accountNo,
    required this.amount,
  });

  String id;
  String organization;
  String billPeriod;
  String accountNo;
  int amount;

  factory WaterBill.fromJson(Map<String, dynamic> json) => WaterBill(
        id: json["id"],
        organization: json["attributes"]["organization"],
        billPeriod: json["attributes"]["bill_period"],
        accountNo: json["attributes"]["account_no"],
        amount: json["attributes"]["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "organization": organization,
        "bill_period": billPeriod,
        "account_no": accountNo,
        "amount": amount,
      };
}
