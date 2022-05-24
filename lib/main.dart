// https://www.youtube.com/watch?v=O3nmP-lZAdg&t=628s

import 'package:amazon_clone_tutorial/constants/global_variables.dart';
import 'package:amazon_clone_tutorial/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_tutorial/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.greyBackgroundCOlor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: GlobalVariables.secondaryColor,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (routeSettings) => generateRoute(routeSettings),
      home: const AuthScreen(),
    );
  }
}
