import 'package:adn_pay/routes/app_pages.dart';
import 'package:adn_pay/widgets/global/input_login_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../Login_auth/login_controller.dart';

class RegisterUsers extends StatefulWidget {
  const RegisterUsers({Key? key}) : super(key: key);

  @override
  State<RegisterUsers> createState() => _RegisterUsersState();
}

class _RegisterUsersState extends State<RegisterUsers> {
  final AuthController _loginController =
      Get.find<AuthController>(tag: 'loginController');

  final GlobalKey<FormBuilderState> _registrationFormKey =
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
            // height: 200,
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
              key: _registrationFormKey,
              child: Padding(
                padding: const EdgeInsets.all(
                  20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            Routes.LOGIN,
                          );
                        },
                        child: SizedBox(
                          width: 100,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              padding: const EdgeInsets.all(
                                10.0,
                              ),
                              onPressed: () {
                                Get.toNamed(
                                  Routes.LOGIN,
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // CircleAvatar(
                    //   backgroundColor: Colors.transparent,
                    //   radius: 100.0,
                    //   child: ClipOval(
                    //     child: Image.network(
                    //       _loginController.user.avatar,
                    //       fit: BoxFit.cover,
                    //       width: 200.0,
                    //       height: 200.0,
                    //       errorBuilder: (context, error, stackTrace) {
                    //         return ProPicReplacementText(
                    //           name: _loginController.user.name,
                    //           dimension: 100.0,
                    //         );
                    //       },
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      width: 200,
                      child: Image.asset(
                        'assets/adnlogo.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'name',
                        decoration: inputLoginStyle(
                          'Enter your Name',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'email',
                        decoration: inputLoginStyle(
                          'Enter your Email',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.email(context),
                        ]),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FormBuilderTextField(
                              name: 'tid',
                              decoration: inputLoginStyle(
                                'Terminal ID',
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
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FormBuilderTextField(
                              name: 'mid',
                              decoration: inputLoginStyle(
                                'Merchant ID',
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
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'contact_number',
                        decoration: inputLoginStyle(
                          'Contact Number',
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
                          FormBuilderValidators.numeric(context),
                        ]),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        maxLines: 2,
                        name: 'location',
                        decoration: inputLoginStyle(
                          'Enter Your Location',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 9,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.green,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          if (_registrationFormKey.currentState!.validate()) {
                            final Map loginCredential = {
                              'name': _registrationFormKey
                                  .currentState!.fields['name']!.value,
                              'email': _registrationFormKey
                                  .currentState!.fields['email']!.value,
                              'tid': _registrationFormKey
                                  .currentState!.fields['tid']!.value,
                              'mid': _registrationFormKey
                                  .currentState!.fields['mid']!.value,
                              'location': _registrationFormKey
                                  .currentState!.fields['location']!.value,
                              'contact_number': _registrationFormKey
                                  .currentState!
                                  .fields['contact_number']!
                                  .value,
                              'pin': _registrationFormKey
                                  .currentState!.fields['pin']!.value,
                            };
                            _loginController.register(loginCredential);
                          } else {}
                        },
                        child: const Text('Register'),
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
