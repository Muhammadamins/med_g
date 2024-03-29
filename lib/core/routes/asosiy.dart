
import 'package:flutter/material.dart';
import 'package:med_g/core/functions/app_functions.dart';
import 'package:med_g/core/route_names/asosiy_route_name.dart';

class AsosiyRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AsosiyRouteNames.asosiy:
        return fade(const Scaffold());
    //  mehrojiddin
    }
    return null;
  }
}