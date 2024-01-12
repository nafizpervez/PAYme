import 'dart:io';
import 'package:adn_pay/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dependency_injection/dependency_injection.dart';

void main() async {
  // await MainService().init();
  DependencyInjection.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpOverrides.global = MyHttpOverrides();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LOGIN,
      theme: ThemeData(
        fontFamily: 'Custom_Font',
      ),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 250),
      getPages: AppPages.pages,
      popGesture: false,
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
        Locale('fa', ''),
        Locale('fr', ''),
        Locale('ja', ''),
        Locale('pt', ''),
        Locale('sk', ''),
        Locale('pl', ''),
      ],
      title: 'ADN PAY',
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
