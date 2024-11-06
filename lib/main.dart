import 'package:flutter/material.dart';
import './screens/category_screen.dart'; // Assuming CategoryScreen is defined in category_screen.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoryScreen(), // Sets CategoryScreen as the initial screen
      debugShowCheckedModeBanner: false, // Removes the debug banner
    );
  }
}
