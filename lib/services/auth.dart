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

// Register with Email&Password

  Future registerWithEmailAndPassword(email, password) async {
    try {
      AuthResult _result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = _result.user;
      return _userFromFirebaseUser(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

// signIn with Email&Password
  Future signInWithEmailAndPassword(email, password) async {
    try {
      AuthResult _result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = _result.user;
      return _userFromFirebaseUser(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
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

  // sign out

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
