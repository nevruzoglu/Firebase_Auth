import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/models/user.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Create user object base on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

//auth change user stream notification
  Stream<User> get user {
    return _auth.onAuthStateChanged
        //same below .map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
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
