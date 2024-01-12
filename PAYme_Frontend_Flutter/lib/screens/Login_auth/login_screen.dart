import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/widgets/global/input_login_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class LoginADNPAY extends StatefulWidget {
  const LoginADNPAY({Key? key}) : super(key: key);

  @override
  State<LoginADNPAY> createState() => _LoginADNPAYState();
}

class _LoginADNPAYState extends State<LoginADNPAY> {
  final AuthController _loginController =
      Get.find<AuthController>(tag: 'loginController');

  final GlobalKey<FormBuilderState> _loginFormKey =
      GlobalKey<FormBuilderState>();

  final ScrollController _scC = ScrollController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: _scC,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.greenAccent.withOpacity(
                    0.8,
                  ),
                  Colors.white,
                  Colors.white,
                ],
                end: AlignmentDirectional.topCenter,
                begin: AlignmentDirectional.bottomCenter,
              ),
            ),
            child: FormBuilder(
              key: _loginFormKey,
              child: Padding(
                padding: const EdgeInsets.all(
                  20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Image.asset(
                        'assets/adnlogo.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'tid',
                        decoration: inputLoginStyle(
                          'Enter your Terminal ID',
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'mid',
                        decoration: inputLoginStyle(
                          'Enter your Merchant ID',
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        obscureText: true,
                        name: 'pin',
                        decoration: inputLoginStyle(
                          'Enter your Pin',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.maxLength(context, 5),
                          FormBuilderValidators.minLength(context, 5),
                        ]),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.REGISTER,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "Don't Have Account? ",
                                style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 9,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (_loginFormKey.currentState!.validate()) {
                                final Map loginCredential = {
                                  'tid': _loginFormKey
                                      .currentState!.fields['tid']!.value,
                                  'mid': _loginFormKey
                                      .currentState!.fields['mid']!.value,
                                  'pin': _loginFormKey
                                      .currentState!.fields['pin']!.value,
                                };
                                _loginController.login(loginCredential);
                              } else {}
                              // Future.delayed(const Duration(seconds: 2), () {
                              //   setState(() {
                              //     isLoading = false;
                              //     Get.toNamed(
                              //       Routes.INITIAL,
                              //     );
                              //   });
                              // });
                            },
                            child: _loginController.authenticating
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Authenticating...',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        height: 18,
                                        width: 18,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                : const Text('Submit'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
