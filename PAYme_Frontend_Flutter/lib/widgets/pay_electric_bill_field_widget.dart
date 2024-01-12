import 'package:adn_pay/widgets/global/common_pages/pin_confirmation.dart';
import 'package:adn_pay/widgets/global/input_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_electric_bill/pay_electric_bill_controller.dart';
import 'bill_sample_previewer.dart';

class PayElectricBill extends StatefulWidget {
  final String assetimage;
  PayElectricBill({
    Key? key,
    required this.assetimage,
  }) : super(key: key);

  @override
  State<PayElectricBill> createState() => _PayElectricBillState();
}

class _PayElectricBillState extends State<PayElectricBill> {
  final ElectricBillController _electricBillController =
      Get.find<ElectricBillController>();

  final ScrollController _scC = ScrollController();

  final GlobalKey<FormBuilderState> _electricBillFormKey =
      GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scC,
      child: FormBuilder(
        key: _electricBillFormKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: FormBuilderDropdown(
                          name: 'bill_period',
                          decoration: inputStyle(
                            'Bill Session',
                            null,
                            null,
                          ),
                          allowClear: true,
                          focusColor: Colors.transparent,
                          // initialValue: 'Bank Account',
                          items: electricPostpaidBillPeriod
                              .map(
                                (value) => DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: FormBuilderTextField(
                          name: 'account_no',
                          decoration: inputStyle(
                            'Customer/Account No.',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: FormBuilderTextField(
                          name: 'contact_number',
                          decoration: inputStyle(
                            'Enter Your Contact Number',
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
                      BillSamplePreviewer(
                        imagelink: widget.assetimage,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text('Amount Information'),
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
                    final Map electricBillCredential = {
                      'organization': Get.arguments['organization'],
                      'bill_period': _electricBillFormKey
                          .currentState!.fields['bill_period']!.value,
                      'account_no': _electricBillFormKey
                          .currentState!.fields['account_no']!.value,
                      'contact_number': _electricBillFormKey
                          .currentState!.fields['contact_number']!.value,
                      'amount': _electricBillFormKey
                          .currentState!.fields['amount']!.value,
                    };
                    Get.dialog(
                      AlertDialog(
                        backgroundColor: Colors.white,
                        contentPadding: const EdgeInsets.all(0),
                        content: PinConfirmation(
                          onSuccess: () {
                            _electricBillController
                                .saveData(electricBillCredential);
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
    );
  }
}
