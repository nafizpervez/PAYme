import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/widgets/global/input_style.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_rx/get_rx.dart';

class PinConfirmation extends StatefulWidget {
  final VoidCallback onSuccess;
  const PinConfirmation({
    Key? key,
    required this.onSuccess,
  }) : super(key: key);

  @override
  State<PinConfirmation> createState() => _PinConfirmationState();
}

class _PinConfirmationState extends State<PinConfirmation> {
  final GlobalKey<FormBuilderState> _pinFormKey = GlobalKey<FormBuilderState>();

  final AuthController _authController = Get.find<AuthController>(
    tag: 'loginController',
  );

  final _authenticating = false.obs;
  bool get authenticating => _authenticating.value;
  void setAuthenticating(value) => _authenticating.value = value;

  late final Dio _dio;

  @override
  void initState() {
    super.initState();
    _dio = Dio();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width * 0.90,
      child: FormBuilder(
        key: _pinFormKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Center(
                    child: Text(
                      'Pin Confirmation',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FormBuilderTextField(
                  name: 'pin',
                  decoration: inputStyle(
                    'Enter your PIN',
                    null,
                    null,
                  ),
                  // onChanged: _onChanged,
                  // valueTransformer: (text) => num.tryParse(text),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.maxLength(context, 5),
                    FormBuilderValidators.minLength(context, 5),
                    FormBuilderValidators.numeric(context),
                  ]),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.green,
                    ),
                  ),
                  onPressed: () {
                    if (_pinFormKey.currentState!.validate()) {
                      final Map pinCredential = {
                        'pin': _pinFormKey.currentState!.fields['pin']!.value
                            .toString(),
                      };
                      print(pinCredential);
                      _dio
                          .post(
                        'http://192.168.13.140:80/api/checkPin',
                        data: pinCredential,
                        options: Options(
                          headers: {
                            'Authorization': 'Bearer ${_authController.token}'
                          },
                        ),
                      )
                          .then((value) {
                        if (value.data['status'] == 'Success') {
                          widget.onSuccess();
                        }
                      });
                    } else {
                      Get.snackbar('Error', 'Pin Confirmation Failed');
                    }
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
