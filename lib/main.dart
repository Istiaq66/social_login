import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/auth_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBHeA_UvMPZJBTnGOZmP_kmVBnOEir-gtY",
        appId: "1:239221681876:android:36aff9ac685d7dea679541",
        messagingSenderId: "239221681876",
        projectId: "social-login-24980"
    )
  );
  
  runApp( const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
