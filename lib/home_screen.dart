import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // void onSubmit(WidgetRef ref, String value) {
  //   ref.read(userProvider.notifier).updateName(value);
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final user = ref.watch(userProvider);

    return Scaffold(
      body: ref.watch(fetchSomeDataProvider).when(
        data: (data) {
          return Column(
            // main axis alignment
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(data.toString())),
              Center(child: Text(data.sublist(1, 4).toString())),
            ],
          );
        },
        error: ((error, stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        }),
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
