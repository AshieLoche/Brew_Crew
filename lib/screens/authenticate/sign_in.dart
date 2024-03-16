import 'package:brew_crew/services/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0 ),
        child: ElevatedButton(
          child: const Text('Sign in Anon'),
          onPressed: () async {

            dynamic result = await _auth.signInAnon();

            if (result == null) {
              if (kDebugMode) {
                print('Error signing in');
              }
            } else {
              if (kDebugMode) {
                print('Signed in');
                print(result.uid);
              }
            }

          },
        ),
      ),
    );
  }
}
