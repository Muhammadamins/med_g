import 'package:flutter/material.dart';
import 'package:med_g/core/functions/app_functions.dart';
import 'package:med_g/core/route_names/profile_route_name.dart';
import 'package:med_g/features/profile/profile.dart';

class ProfileRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ProfileRouteNames.profile:
        return fade(const Profile());
    
    }
    return null;
  }
}