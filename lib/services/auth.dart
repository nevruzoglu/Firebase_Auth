import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/models/user.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Create user object base on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

//sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
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
