import 'package:flutter/material.dart';
import 'package:nutri_plan/tempelate/login1.dart';
import 'package:nutri_plan/tempelate/onboarding.dart';
import 'package:nutri_plan/tempelate/register.dart';
import 'package:nutri_plan/tempelate/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}




