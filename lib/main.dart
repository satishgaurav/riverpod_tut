import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/user.dart';
import 'home_screen.dart';

// Providers
// Provider: provides data to widgets and other providers
// StateProvider: update the value from the outside/used to modify simple values
// StateNotifier & StateNotifierProvider

// final userProvider = Provider((ref) {
//   return const User(name: "Satish", username: "Satish");
// });

// final fetchSomeDataProvider = StreamProvider((ref) async* {
//   yield [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// });

final userProvider = StateProvider<String?>((ref) => null);

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
