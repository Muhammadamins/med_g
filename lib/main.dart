import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:med_g/core/routes/app_route.dart';
import 'package:med_g/features/authentication/sign_up/sign_up_page.dart';
import 'package:med_g/features/calendar/calendar_screen.dart';
import 'package:med_g/features/profile/profile.dart';
import 'package:med_g/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Med_G',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}

