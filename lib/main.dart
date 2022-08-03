import 'package:flutter/material.dart';
import 'package:supabase_apple_auth/pages/login_page.dart';
import 'package:supabase_apple_auth/pages/my_home_page.dart';
import 'package:supabase_apple_auth/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://uyxphcoztzkgahfqwajs.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV5eHBoY296dHprZ2FoZnF3YWpzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTk1MTcwODIsImV4cCI6MTk3NTA5MzA4Mn0.G08TNbv1RI5mt4T10gjCPejzXkmmNqC-yRcKUiXvnkk',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/home': (_) => const MyHomePage(),
      },
    );
  }
}
