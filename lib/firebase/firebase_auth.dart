import 'package:firebase_auth/firebase_auth.dart';

class FireAuth {
  static Future<User?> login(
      {required String email, required String password}) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((val) {
      return val.user;
    }).catchError((err) {
      if (err.code == 'user-not-found') {
        print("invalid credentials");
        throw err;
      }
    });
  }

  static Future<User?> registerUsingEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user.reload();
      user = auth.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      print("FirebaseException: $e");
      throw e;
    } catch (e) {
      print("An error has occurred: $e");
      print(e);
    }
    return user;
  }
}
