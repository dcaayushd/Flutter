import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => VerifyEmailViewState();
}

class VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify Email'),
      ),
      body: Column(
        children: [
          Text('Please Verify your Email'),
          TextButton(
              onPressed: (() async {
                final user = FirebaseAuth.instance.currentUser;
                await user?.sendEmailVerification();
              }),
              child: Text('Send Email Verification'))
        ],
      ),
    );
  }
}
