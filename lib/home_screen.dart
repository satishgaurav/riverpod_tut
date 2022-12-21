
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final name = ref.watch(nameProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Consumer(
        builder: (context, ref, child){
          final name = ref.watch(nameProvider);
          return Column(
            children: [
              Center(
                child: Text(name),
              )
            ],
          );
      }),
    );
  }
}
