import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_education_bill/pay_education_bill_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/bottom_processing_bar.dart';
import 'package:adn_pay/widgets/global/common_pages/pin_confirmation.dart';
import 'package:adn_pay/widgets/global/input_style.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class PayEducationBillPeriod extends StatefulWidget {
  const PayEducationBillPeriod({Key? key}) : super(key: key);

  @override
  State<PayEducationBillPeriod> createState() => _PayEducationBillPeriodState();
}

class _PayEducationBillPeriodState extends State<PayEducationBillPeriod> {
  final EducationBillController _educationBillController =
      Get.find<EducationBillController>();
  final ScrollController _scC = ScrollController();
  final GlobalKey<FormBuilderState> _educationBillFormKey =
      GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppProcessingBar(),
        ),
        // bottomNavigationBar: const BottomProcessingBar(
        //   route: Routes.ENTERAMOUNT,
        // ),
        body: SingleChildScrollView(
          controller: _scC,
          child: FormBuilder(
            key: _educationBillFormKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Bill Period '),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: FormBuilderDropdown(
                              name: 'bill_period',
                              decoration: inputStyle(
                                'Bill Period',
                                null,
                                null,
                              ),
                              allowClear: true,
                              focusColor: Colors.transparent,
                              // initialValue: 'Bank Account',
                              items: educationBillPeriod
                                  .map(
                                    (value) => DropdownMenuItem(
                                      child: Text(value),
                                      value: value,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Enter Student ID '),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: FormBuilderTextField(
                              name: 'student_id',
                              decoration: inputStyle(
                                'Student ID',
                                null,
                                null,
                              ),
                              // onChanged: _onChanged,
                              // valueTransformer: (text) => num.tryParse(text),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context),
                              ]),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            child: Text(
                              'Amount Information',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FormBuilderTextField(
                            name: 'amount',
                            decoration: inputStyle(
                              'Enter your Bill Amount',
                              null,
                              null,
                            ),
                            // onChanged: _onChanged,
                            // valueTransformer: (text) => num.tryParse(text),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(context),
                            ]),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 3,
                    ),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        ),
                      ),
                      onPressed: () {
                        final Map educationBillCredential = {
                          'organization': Get.arguments['organization'],
                          'bill_period': _educationBillFormKey
                              .currentState!.fields['bill_period']!.value,
                          'student_id': _educationBillFormKey
                              .currentState!.fields['student_id']!.value,
                          'amount': _educationBillFormKey
                              .currentState!.fields['amount']!.value,
                        };
                        Get.dialog(
                          AlertDialog(
                            backgroundColor: Colors.white,
                            contentPadding: const EdgeInsets.all(0),
                            content: PinConfirmation(
                              onSuccess: () {
                                _educationBillController
                                    .saveData(educationBillCredential);
                              },
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.done,
                        size: 26,
                      ),
                      label: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
