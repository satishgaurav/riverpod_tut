// This file is "main.dart"
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'user.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'user.g.dart';

@immutable
@freezed
class User with _$User {
  const factory User({
    required String name,
    required String age,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

// user notifer is a class
// this will contain the methods to update the varialbe in the user
//
class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void updateName(String name) {
    state = User(name: name, age: state.age);
  }
}
