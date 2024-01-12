import 'package:adn_pay/screens/Login_auth/login_controller.dart';
import 'package:adn_pay/screens/Navigation/app_bar_processing_bar.dart';
import 'package:adn_pay/screens/Navigation/side_nav.dart';
import 'package:adn_pay/screens/Profile/profile_controller.dart';
import 'package:adn_pay/widgets/global/input_login_style.dart';
import 'package:adn_pay/widgets/global/input_style.dart';
import 'package:adn_pay/widgets/propic_replacement.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class ProfileEdit extends StatefulWidget {
  ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  late final ProfileController _authController;

  final GlobalKey<FormBuilderState> _profileEditFormKey =
      GlobalKey<FormBuilderState>(debugLabel: 'ProfileEditForm');

  final ScrollController _scC =
      ScrollController(debugLabel: 'profile_scroll_controller');

  late Image? placeholder;
  @override
  void initState() {
    super.initState();
    _authController = Get.find<ProfileController>();
    placeholder = null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: SideNav(),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppProcessingBar(),
        ),
        body: GetX<ProfileController>(
          builder: (proController) {
            return SingleChildScrollView(
              controller: _scC,
              child: FormBuilder(
                key: _profileEditFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 100.0,
                          child: ClipOval(
                            child: ProPicReplacementText(
                              name: _authController.user.name,
                              dimension: 160.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: CircleAvatar(
                    //     radius: 80,
                    //     backgroundColor: Colors.green.shade50,
                    //     child: const Icon(
                    //       Icons.person,
                    //       color: Colors.black87,
                    //       size: 120,
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'name',
                        decoration: inputStyle(
                          'Edit your Name',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                        ]),
                        initialValue: _authController.user.name.toString(),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'email',
                        decoration: inputStyle(
                          'Edit your Email',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.email(context),
                        ]),
                        initialValue: _authController.user.email.toString(),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        name: 'contact_number',
                        decoration: inputStyle(
                          'Edit your Contact Number',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                        ]),
                        initialValue:
                            _authController.user.contactNumber.toString(),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FormBuilderTextField(
                              name: 'tid',
                              decoration: inputStyle(
                                'Terminal ID',
                                null,
                                null,
                              ),
                              // onChanged: _onChanged,
                              // valueTransformer: (text) => num.tryParse(text),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context),
                              ]),
                              initialValue: _authController.user.tid.toString(),
                              keyboardType: TextInputType.number,
                              enabled: false,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: FormBuilderTextField(
                              name: 'mid',
                              decoration: inputStyle(
                                'Merchant ID',
                                null,
                                null,
                              ),
                              // onChanged: _onChanged,
                              // valueTransformer: (text) => num.tryParse(text),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(context),
                              ]),
                              initialValue: _authController.user.mid.toString(),
                              keyboardType: TextInputType.number,
                              enabled: false,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FormBuilderTextField(
                        maxLines: 2,
                        name: 'location',
                        decoration: inputStyle(
                          'Edit your Location',
                          null,
                          null,
                        ),
                        // onChanged: _onChanged,
                        // valueTransformer: (text) => num.tryParse(text),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                        ]),
                        initialValue: _authController.user.location.toString(),
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
                          if (_profileEditFormKey.currentState!.validate()) {
                            final editedProfile = <String, dynamic>{
                              'name': _profileEditFormKey
                                  .currentState!.fields['name']!.value,
                              'email': _profileEditFormKey
                                  .currentState!.fields['email']!.value,
                              'location': _profileEditFormKey
                                  .currentState!.fields['location']!.value,
                              'contact_number': int.parse(_profileEditFormKey
                                  .currentState!.fields['contact_number']!.value
                                  .toString()),
                            };
                            print(editedProfile);
                            _authController.updateProfile(editedProfile);
                          } else {}
                        },
                        child: const Text('Update'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
