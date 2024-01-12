import 'dart:convert';

EducationBill educationBillFromJson(String str) =>
    EducationBill.fromJson(json.decode(str));

String educationBillToJson(EducationBill data) => json.encode(data.toJson());

class EducationBill {
  EducationBill({
    required this.id,
    required this.organization,
    required this.billPeriod,
    required this.studentId,
    required this.amount,
  });

  String id;
  String organization;
  String billPeriod;
  String studentId;
  int amount;

  factory EducationBill.fromJson(Map<String, dynamic> json) => EducationBill(
        id: json["id"],
        organization: json["attributes"]["organization"],
        billPeriod: json["attributes"]["bill_period"],
        studentId: json["attributes"]["student_id"],
        amount: json["attributes"]["amount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "organization": organization,
        "bill_period": billPeriod,
        "student_id": studentId,
        "amount": amount,
      };
}
