
import 'package:flutter/material.dart';
import 'package:social_login/Components/my_button.dart';
import 'package:social_login/Components/my_textfield.dart';
import 'package:social_login/Services/auth_service.dart';

class Login extends StatelessWidget {
   Login({super.key});

  //text editing controllers
  final usernameController = TextEditingController();

  final passwordCntroller = TextEditingController();

   // Sign user in method
  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                //logo
                const Image(
                  image: AssetImage('images/logo.png'),
                  height: 150,
                  width: 150,
                ),

                //Appname
                const Text(
                  'Auction App',
                  style: TextStyle(fontFamily: 'Pacifico', fontSize: 25),
                ),

                const SizedBox(
                  height: 20,
                ),

                //welcome back, you've been missed
                const Text(
                  'Welcome back, you\'ve been missed',
                  style: TextStyle(fontFamily: 'SourceSans3', fontSize: 15),
                ),

                const SizedBox(
                  height: 20,
                ),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hinText: 'Username',
                  obsecureText: false,
                ),

                const SizedBox(
                  height: 20,
                ),
                // password textfield
                MyTextField(
                  controller: passwordCntroller,
                  hinText: 'Password',
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // sign in button
                MyButton(
                  onTap: signInUser,
                ),

                const SizedBox(
                  height: 25,
                ),
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                // google sign in button
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap:
                      // anonymous function
                      () => AuthService().signInWithGoogle(),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey[200],
                    ),
                    child: Image.asset(
                      'images/google.png',
                      height: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // not a member register
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
