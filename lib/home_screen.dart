import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_tut/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // void onSubmit(WidgetRef ref, String value) {
  //   ref.read(userProvider.notifier).updateName(value);
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(fetchUserProvider);
    return user.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Center(
              child: Text(data.name),
            )
          ]),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Center(
              child: Text("error"),
            )
          ]),
        );
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Center(
              child: Text("loading"),
            )
          ]),
        );
      },
    );
  }
}
