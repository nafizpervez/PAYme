// To parse this JSON data, do
//
//     final gasBill = gasBillFromJson(jsonString);

import 'dart:convert';

GasBill gasBillFromJson(String str) => GasBill.fromJson(json.decode(str));

String gasBillToJson(GasBill data) => json.encode(data.toJson());

class GasBill {
  GasBill({
    required this.id,
    required this.organization,
    required this.customerCode,
    required this.billPeriod,
    required this.contactNumber,
    required this.amount,
  });

  String id;
  String organization;
  String customerCode;
  String billPeriod;
  String contactNumber;
  int amount;

  factory GasBill.fromJson(Map<String, dynamic> json) => GasBill(
        id: json["id"],
        organization: json["attributes"]["organization"],
        customerCode: json["attributes"]["customer_code"],
        billPeriod: json["attributes"]["bill_period"],
        contactNumber: json["attributes"]["contact_number"],
        amount: json["attributes"]["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "organization": organization,
        "customer_code": customerCode,
        "bill_period": billPeriod,
        "contact_number": contactNumber,
        "amount": amount,
      };
}
