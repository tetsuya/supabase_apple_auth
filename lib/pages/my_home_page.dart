import 'package:flutter/material.dart';
import 'package:supabase_apple_auth/utils/constants.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome!'),
      ),
      body: Center(
        child: Text(
          'You have signed in with ${supabase.auth.currentUser?.email ?? 'unknown email address'}',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          supabase.auth.signOut();
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/login', (route) => false);
        },
        tooltip: 'Sign Out',
        child: const Icon(
          Icons.logout_outlined,
        ),
      ),
    );
  }
}
