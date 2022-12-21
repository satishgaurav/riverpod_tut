
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tut/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    final nameRead = ref.read(nameProvider);
    /*
    diff between read and watch:
    read: only read once, after that even if there in change in provider,
    it won't update the widgets. not recommended to use inside of build method

    watch: it will constantly listen to the change in value.
    */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Satish"),
      ),
      body: Column(
            children: [
              Center(
                child: Text(name),
              )
            ],
      ),
    );
  }
}
