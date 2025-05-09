import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/auth/signup.dart';
import 'package:first/main.dart';
import 'package:flutter/material.dart';
import 'package:first/HomePage.dart';
import 'package:first/auth/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState()=> _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('==================User is currently signed out!');
      } else {
        print('=====================User is signed in!');
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         // fontFamily:"font3",
      ) ,
      home:(FirebaseAuth.instance.currentUser != null &&
          FirebaseAuth.instance.currentUser!.emailVerified) ? Homepage() : LogIn() ,
      routes:{
        "signup":(context)=>Signup(),
        "log":(context)=>LogIn(),
        "home":(context)=>Homepage(),
      },
    );
  }
}


