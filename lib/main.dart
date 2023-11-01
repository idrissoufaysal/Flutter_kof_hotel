import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kof_hotels/home_page.dart';
import 'package:kof_hotels/pages/hotels.dart';
//import 'package:kof_hotels/home_page.dart';
import 'package:kof_hotels/pages/signUp_page.dart';
//import 'package:kof_hotels/main_page.dart';
// import 'package:kof_hotels/pages/hotels.dart';
 import 'package:kof_hotels/pages/login_page.dart';
// import 'package:kof_hotels/pages/signUp_page.dart';
// ignore: depend_on_referenced_packages;
import'package:firebase_core/firebase_core.dart'; 



void main() async {
      var widgetsFlutterBinding;
      widgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      runApp(const MyApp());
       }

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        hintColor: Colors.grey[400],
        scaffoldBackgroundColor: Colors.black,
      ),
    home: Hotels()
      );
  }
}

