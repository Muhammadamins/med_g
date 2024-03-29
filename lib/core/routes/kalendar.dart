import 'package:flutter/material.dart';
import 'package:med_g/core/functions/app_functions.dart';
import 'package:med_g/core/route_names/kalendar_route_name.dart';
import 'package:med_g/features/calendar/calendar_screen.dart';

class KalendarRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case KalendarRouteNames.kalendar:
        return fade(const CalendarScreen());
    
    }
    return null;
  }
}