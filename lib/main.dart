import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'core/app_theme.dart';
import 'features/calculator/presentation/calculator_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classic Calculator',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: CalculatorScreen(),
    );
  }
}
