import 'package:firebase_auth/firebase_auth.dart;

class AuthServices{
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signInAnonymous() async {
    try{AuthResult result = await _auth.signInAnonymously();
    FirebaseUser firebaseUser = result.user;

    return firebaseUser;}
    catch(e) {
      print(e.toString());

      return null;
    }
  }

  static Future<void> SignOut() async{
    _auth.SignOut();
  }
}

//   static Future<FirebaseUser> Signup(String email, String password) async{
//     try {
//       _auth.createUserWithEmailAndPassword(email:email, password: password);
//     }
//   }
// }

// mixin AuthResult {
// }

// class FirebaseUser {
// }

// class FirebaseAuth {
//   static FirebaseAuth instance;

//   void createUserWithEmailAndPassword({String email, String password}) {}

//   signInAnonymously() {}
// }