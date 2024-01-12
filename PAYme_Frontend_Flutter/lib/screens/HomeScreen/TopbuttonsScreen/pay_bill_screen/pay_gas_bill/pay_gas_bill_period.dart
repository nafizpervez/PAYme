import 'package:adn_pay/screens/HomeScreen/TopbuttonsScreen/pay_bill_screen/pay_gas_bill/pay_gas_bill_controller.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/widgets/global/common_pages/pin_confirmation.dart';
import 'package:adn_pay/widgets/global/input_style.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class PayGasBillPeriod extends StatefulWidget {
  // final String headerTitle;
  // final String assetimage;
  const PayGasBillPeriod({
    Key? key,
    // required this.assetimage,
    // required this.headerTitle,
  }) : super(key: key);

  @override
  State<PayGasBillPeriod> createState() => _PayGasBillPeriodState();
}

class _PayGasBillPeriodState extends State<PayGasBillPeriod> {
  late final AuthController loginController;
  @override
  void initState() {
    super.initState();
    loginController = Get.find<AuthController>(
      tag: 'loginController',
    );
  }

  final GasBillController _gasBillController = Get.find<GasBillController>();
  final ScrollController _scC = ScrollController();
  final GlobalKey<FormBuilderState> _gasBillFormKey =
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
            key: _gasBillFormKey,
            child: Padding(
              padding: const EdgeInsets.all(
                10.0,
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
                            padding: const EdgeInsets.symmetric(vertical: 5),
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
                              items: gasBillPeriod
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
                            child: Text('Enter Customer information '),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: FormBuilderTextField(
                              name: 'customer_code',
                              decoration: inputStyle(
                                'Customer Code',
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
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: FormBuilderTextField(
                              name: 'contact_number',
                              decoration: inputStyle(
                                'Contact Number',
                                null,
                                null,
                              ),
                              // onChanged: _onChanged,
                              // valueTransformer: (text) => num.tryParse(text),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context),
                                FormBuilderValidators.numeric(context),
                              ]),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          // BillSamplePreviewer(
                          //   imagelink: widget.assetimage,
                          // ),
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
                        final Map gasBillCredential = {
                          'organization': Get.arguments['organization'],
                          'customer_code': _gasBillFormKey
                              .currentState!.fields['customer_code']!.value,
                          'bill_period': _gasBillFormKey
                              .currentState!.fields['bill_period']!.value,
                          'contact_number': _gasBillFormKey
                              .currentState!.fields['contact_number']!.value,
                          'amount': _gasBillFormKey
                              .currentState!.fields['amount']!.value,
                        };
                        Get.dialog(
                          AlertDialog(
                            backgroundColor: Colors.white,
                            contentPadding: const EdgeInsets.all(0),
                            content: PinConfirmation(
                              onSuccess: () {
                                _gasBillController.saveData(gasBillCredential);
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
