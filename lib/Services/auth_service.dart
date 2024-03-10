import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

  // GOOGLE SIGN IN
  signInWithGoogle() async {
    //begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    // obtain auth details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    // create  a new credential for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    // finally, let's sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // FACEBOOK SIGN IN
  Future<UserCredential> signInWithFacebook() async {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
      FacebookAuthProvider.credential(loginResult.accessToken!.token);

      debugPrint('=============>>>$facebookAuthCredential');

     return await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}