import 'dart:convert';

InternetBill internetBillFromJson(String str) =>
    InternetBill.fromJson(json.decode(str));

String internetBillToJson(InternetBill data) => json.encode(data.toJson());

class InternetBill {
  InternetBill({
    required this.id,
    required this.organization,
    required this.billPeriod,
    required this.accountNo,
    required this.contactNumber,
    required this.amount,
  });

  String id;
  String organization;
  String billPeriod;
  String accountNo;
  String contactNumber;
  int amount;

  factory InternetBill.fromJson(Map<String, dynamic> json) => InternetBill(
        id: json["id"],
        organization: json["attributes"]["organization"],
        billPeriod: json["attributes"]["bill_period"],
        accountNo: json["attributes"]["account_no"],
        contactNumber: json["attributes"]["contact_number"],
        amount: json["attributes"]["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "organization": organization,
        "bill_period": billPeriod,
        "account_no": accountNo,
        "contact_number": contactNumber,
        "amount": amount,
      };
}
