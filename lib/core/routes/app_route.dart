import 'package:flutter/material.dart';
import 'package:med_g/core/functions/app_functions.dart';
import 'package:med_g/core/route_names/app_route_name.dart';
import 'package:med_g/features/authentication/sign_in/sign_in_page.dart';
import 'package:med_g/features/authentication/sign_up/sign_up_page.dart';
import 'package:med_g/features/home/home.dart';
import 'package:med_g/features/splash/splash_screen.dart';

class AppRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteNames.splash:
        return fade(const SplashScreen());
      case AppRouteNames.home:
        return fade(const HomePage()); 
      case AppRouteNames.onboarding:
        return fade(const Scaffold ());
      case AppRouteNames.signin:
        return fade( SignInPage());
      case AppRouteNames.signup:
        return fade( SignUpPage());
      default:
        return fade(const  Scaffold());
    }
  
  
  
  }
}