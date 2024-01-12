// To parse this JSON data, do
//
//     final electricityBill = electricityBillFromJson(jsonString);

import 'dart:convert';

ElectricityBill electricityBillFromJson(String str) =>
    ElectricityBill.fromJson(json.decode(str));

String electricityBillToJson(ElectricityBill data) =>
    json.encode(data.toJson());

class ElectricityBill {
  ElectricityBill({
    required this.id,
    required this.organization,
    required this.accountNo,
    this.billPeriod,
    required this.contactNumber,
    required this.amount,
  });

  String id;
  String organization;
  int accountNo;
  dynamic billPeriod;
  String contactNumber;
  int amount;

  factory ElectricityBill.fromJson(Map<String, dynamic> json) =>
      ElectricityBill(
        id: json["id"],
        organization: json["attributes"]["organization"],
        accountNo: json["attributes"]["account_no"],
        billPeriod: json["attributes"]["bill_period"],
        contactNumber: json["attributes"]["contact_number"],
        amount: json["attributes"]["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "organization": organization,
        "account_no": accountNo,
        "bill_period": billPeriod,
        "contact_number": contactNumber,
        "amount": amount,
      };
}
