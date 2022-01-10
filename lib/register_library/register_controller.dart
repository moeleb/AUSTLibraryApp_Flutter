import 'package:firebase_auth/firebase_auth.dart';
import 'package:libraryproj/core/session.dart';
import 'package:libraryproj/firebase/firebase_auth.dart';
import 'package:libraryproj/home_screen/settings_screen/user_controller.dart';

class RegisterController {
  String? fullName;
  String? email;
  String? address;
  String? phone;
  String? password;
  String? confirmPassword;
  bool buttonLoading=false;

  bool get canProceed {
    return fullName != null &&
        email != null &&
        phone != null &&
        password != null;
  }

  bool get passwordMatch {
    return password == confirmPassword;
  }


  Future<User?> registerUser() {
    return FireAuth.registerUsingEmailPassword(
            name: fullName ?? "", email: email ?? "", password: password ?? "")
        .then((value) async{
          //save the user in the storage
          print("registered the user in firebase, saving in local storage");
          await Session().saveUser(value!);
          UserController userController = UserController();
          await userController.addUserInfo(address ?? "", phone ?? "");

          return value;
        });
  }
}

Future<void> signOut() async {

  await FirebaseAuth.instance.signOut();
}
