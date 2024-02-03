import 'package:flutter/material.dart';
import 'package:dersteyim_mobile/presentation/login_or_sign_up_screen/login_or_sign_up_screen.dart';
import 'package:dersteyim_mobile/presentation/sign_up_2nd_step_screen/sign_up_2nd_step_screen.dart';
import 'package:dersteyim_mobile/presentation/sign_up_3rd_step_screen/sign_up_3rd_step_screen.dart';
import 'package:dersteyim_mobile/presentation/splash_screen/splash_screen.dart';
import 'package:dersteyim_mobile/presentation/home_screen/home_screen.dart';
import 'package:dersteyim_mobile/presentation/login_screen/login_screen.dart';
import 'package:dersteyim_mobile/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginOrSignUpScreen = '/login_or_sign_up_screen';

  static const String signUp2ndStepScreen = '/sign_up_2nd_step_screen';

  static const String signUp3rdStepScreen = '/sign_up_3rd_step_screen';

  static const String splashScreen = '/splash_screen';

  static const String homeScreen = '/home_screen';

  static const String loginScreen = '/login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginOrSignUpScreen: (context) => LoginOrSignUpScreen(),
    signUp2ndStepScreen: (context) => SignUp2ndStepScreen(),
    signUp3rdStepScreen: (context) => SignUp3rdStepScreen(),
    splashScreen: (context) => SplashScreen(),
    homeScreen: (context) => HomeScreen(),
    loginScreen: (context) => LoginScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
