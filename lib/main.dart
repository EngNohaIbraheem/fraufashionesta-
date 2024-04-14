import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/shared/func.dart';
import 'package:ecommerce_app/core/styles/app_theme.dart';
import 'package:ecommerce_app/features/onboarding/view/screen/welcome_screen.dart';
import 'package:ecommerce_app/injections.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/view/screens/enter_email_forgotPassword.dart';
import 'features/auth/view/screens/login_screen.dart';
import 'features/auth/view/screens/new_password_screen.dart';
import 'features/auth/view/screens/signup_screen.dart';
import 'features/auth/view/screens/verify_code_forgot_password.dart';
import 'features/main/view/screens/home_screen.dart';
import 'features/onboarding/view/screen/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


await setupInjections();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(),
      routes: routeManager(),
      // home: HomeScreen(),
        // home:OnboardingScreen (),

      initialRoute: initRoute(),
    );
  }
}
