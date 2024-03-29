import 'package:flutter/material.dart';
import 'package:med_g/core/functions/app_functions.dart';
import 'package:med_g/core/route_names/maqola_route_name.dart';

class MaqolaRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MaqolaRouteNames.maqola:
        return fade(const Scaffold());
    
    }
    return null;
  }
}