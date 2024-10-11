import 'dart:async';
import 'dart:convert';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first/details.dart';
import 'package:first/main.dart';
import 'package:first/packages/appClass.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:geolocator/geolocator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomePageState(); // Make sure the state matches the widget
}
class _HomePageState extends State<Homepage> { // Corrected: State<Homepage>
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title:Text("Continue..."), 
        backgroundColor:Colors.lightGreen ,
        actions: [
          IconButton(onPressed:()async {
            GoogleSignIn  google_auth = GoogleSignIn();
            google_auth.disconnect();
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil("log" , (rout)=>false) ;
          }, icon:Icon(Icons.exit_to_app))
        ],
      ),

      body:ListView(
        children: [
         Text("Welcom",textAlign:TextAlign.center,
              style:TextStyle(fontSize: 30 ,fontFamily:"font1")),
        ]

      )
    );
  }
}
//3189
//0.0