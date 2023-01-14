import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void onSubmit(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider) ?? 'Please pass some value';
    return Scaffold(
      appBar: AppBar(
        title: Text(user),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) {
              // ref.watch(userProvider.notifier).state = value;
              onSubmit(ref, value);
            },
          ),
          Center(
            child: Text(user),
          )
        ],
      ),
    );
  }
}
