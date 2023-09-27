import 'package:admin_login_code_generator/models/form_parameters.dart';
import 'package:admin_login_code_generator/pages/code_copy.dart';
import 'package:admin_login_code_generator/pages/form_generator.dart';
import 'package:admin_login_code_generator/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final colorScheme =
        ColorScheme.fromSeed(seedColor: const Color(0xFF6640B4));
    return MaterialApp(
      title: 'Admin Demo',
      theme: buildTheme(colorScheme: colorScheme),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        if (settings.name == "/generated") {
          final args = settings.arguments as FormParameters?;
          return MaterialPageRoute(
              builder: (context) => CodeCopyPage(parameters: args));
        } else {
          return MaterialPageRoute(
              builder: (context) => const FormGeneratorPage());
        }
      },
    );
  }
}
