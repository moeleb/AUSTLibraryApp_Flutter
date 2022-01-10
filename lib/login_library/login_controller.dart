import 'package:flutter/cupertino.dart';
import 'package:libraryproj/core/session.dart';
import 'package:libraryproj/firebase/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController {
  String? email;
  String? password;

  bool get proceedLogin {
    return email != null && password != null;
  }

  Future<User> loginUser({@required email, @required password}) {
    return FireAuth.login(email: email, password: password).then((user) async {
      print("userLogin: ${user?.uid ?? null}");
      await Session().saveUser(user!);
      return user;
    });
  }
}
