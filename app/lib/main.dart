import 'package:flutter/material.dart';
import 'screens/authentication/login_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlowState',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Sigue el tema del sistema
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}