import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:libraryproj/core/app_user.dart';
import 'package:libraryproj/core/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Session {
  static final Session _singleton = Session._internal();
  static const String USER = "User";

  AppUser? _appUser;

  factory Session() {
    return _singleton;
  }

  Session._internal();


  Future<void> saveUser(User user) {
    return SharedPreferences.getInstance().then((pref) {
      AppUser appUser = AppUser(
          email: user.email,
          uuid: user.uid,
          phoneNumber: user.phoneNumber,
          displayName: user.displayName);
      String toBeStored = json.encode(appUser.toJson());
      print("savingUser: $toBeStored");
      pref.setString(USER, toBeStored);
      this._appUser=appUser;
    });
  }

  Future<AppUser?> loadUser() {

    return SharedPreferences.getInstance().then((pref) {
      String? info = pref.getString(USER);
      if (info != null) {
        Map<String, dynamic> data = json.decode(info);
        _appUser = AppUser.fromJson(data);

        return _appUser;
      }
      return null;
    });
  }

  bool get isAuthenticated {
    return _appUser != null;
  }

  AppUser? get currentUser {
    return _appUser;
  }

  Future<void> logout(BuildContext context) {

    return SharedPreferences.getInstance().then((value)async{
      await FirebaseAuth.instance.signOut();
      value.clear();
      UserData().clean();
      Phoenix.rebirth(context);
      _appUser = null;
    });
  }
}
