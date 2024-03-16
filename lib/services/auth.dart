import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';

class AuthService {

  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  // Create user obj based on FirebaseUser
  User _userFromFirebaseUser(auth.User user) {
    return User(uid: user.uid);
  }

  // Sign in anon
  Future signInAnon() async {
    try {
      auth.UserCredential result = await _auth.signInAnonymously();
      auth.User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }

  // Sign in with email & password

  // Register with email & password

  // Sign out

}