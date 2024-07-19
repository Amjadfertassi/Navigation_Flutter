import 'package:flutter/material.dart';
import 'package:flutter_application_1/Toolbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amjad App Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 45, 98, 255)),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ButtonNavWithAnimatedIcons(),
    );
  }
}
