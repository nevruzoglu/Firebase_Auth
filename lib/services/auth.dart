import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  // void _register() async {
  //   final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
  //           email: _emailController.text, password: _passworController))
  //       .user;
  // }
}
