import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/user.dart';
import 'package:http/http.dart' as http;

import 'home_screen.dart';

// Providers
// Provider: provides data to widgets and other providers
// StateProvider: update the value from the outside/used to modify simple values
// StateNotifier & StateNotifierProvider

// future providers
final fetchUserProvider = FutureProvider((ref) {
  const url = 'https/jsonplaceholder.typicode.com/users/1';
  return http.get(Uri.parse(url));
});

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
