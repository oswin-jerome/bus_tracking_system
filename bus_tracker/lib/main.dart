import 'package:bus_tracker/screens/login_page.dart';
import 'package:bus_tracker/screens/trip_select_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Name',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: false,
      ),
      initialRoute: "/login",
      routes: {
        '/login': (context) => LoginPage(),
        '/trip': (context) => TripSelectScreen(),
      },
    );
  }
}
