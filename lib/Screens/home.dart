import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  Future<void> signUserOut() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              "Profile",
              style: TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(user.photoURL!),
              radius: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Name: ${user.displayName!}',
              style: const TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              'User email: ${user.email!}',
              style: const TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 20,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                signUserOut();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              child: const Text(
                "Logout",
                style: TextStyle(
                    fontFamily: 'SourceSans3',
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
