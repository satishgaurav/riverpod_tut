import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/user.dart';
import 'home_screen.dart';

// Providers
// Provider: provides data to widgets and other providers
// StateProvider: update the value from the outside/used to modify simple values
// StateNotifier & StateNotifierProvider:
// to update the complex state  like modifying a value inside a class

// final userProvider = StateProvider<String?>((ref) => null);
// final userProvider = Provider((ref) => "User");

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
