import 'package:flutter/material.dart';
import 'package:nomad_friendly_app/navigation/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nomad Friendly :)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRoutes.generateRoute,
      
    );
  }
}