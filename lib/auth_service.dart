// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

// class AuthServices {
//   static FirebaseAuth _auth = FirebaseAuth.instance;

//   static Future<FirebaseUser> signInAnonymous() async {
//     try {
//       AuthResult result = await _auth.signInAnonymously();
//       FirebaseUser firebaseUser = result.user;

//       return firebaseUser;
//     } on Exception catch (e) {
//       print(e.toString());
//       return;
//     }
//   }

//   static Future<FirebaseUser> signUp(String email, String password) async {
//     try {
//       AuthResult result = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       FirebaseUser firebaseUser = result.user;

//       return firebaseUser;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   static Future<FirebaseUser> signIn(String email, String password) async {
//     try {
//       AuthResult result = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       FirebaseUser user = result.user;

//       return user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }

//   static Stream<FirebaseUser> get firebaseUserStream =>
//       _auth.onAuthStateChanged;
// }
