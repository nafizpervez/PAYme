import 'dart:convert';

TvBill tvBillFromJson(String str) => TvBill.fromJson(json.decode(str));

String tvBillToJson(TvBill data) => json.encode(data.toJson());

class TvBill {
  TvBill({
    required this.id,
    required this.organization,
    required this.billPeriod,
    required this.customerId,
    required this.amount,
  });

  String id;
  String organization;
  String billPeriod;
  String customerId;
  int amount;

  factory TvBill.fromJson(Map<String, dynamic> json) => TvBill(
        id: json["id"],
        organization: json["attributes"]["organization"],
        billPeriod: json["attributes"]["bill_period"],
        customerId: json["attributes"]["customer_id"],
        amount: json["attributes"]["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "organization": organization,
        "bill_period": billPeriod,
        "customer_id": customerId,
        "amount": amount,
      };
}
