import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Accessing user information
  Future<Users?> getUserInfo() async {
    User? user = _auth.currentUser;
    // if (user != null) {
    //   String uid = user.uid;
    //   String? email = user.email;
    //   // ... other user properties
    //   print('User UID: $uid');
    //   print('User Email: $email');
    // }

    return user != null ? Users(uid: user.uid) : null;
  }

  // Sign in anonymously
  // Future<void> signInAnon() async {
  //   try {
  //     UserCredential result = await _auth.signInAnonymously();
  //     User? user = result.user;
  //     if (user != null) {
  //       print('Signed in anonymously: ${user.uid}');
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // Sign in with email and password
  // Register with email and password
  // Sign out
}
