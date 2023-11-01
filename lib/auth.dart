 
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

// class Auth{

  
//   final Firebase _firebaseAuth= FirebaseAuth.instance;
//  User? get CurrentUser => _firebaseAuth.CurrentUser;
 
//  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges;

//  Future<void> signInWithEmailAndPassword({
//   required String email,
//   required String password,
//  }) async{
//   await _firebaseAuth.signInWithEmailAndPassword(
//     email:email,
//      password:password
//   );
//  }

//  Future<void> createUserWithEmailAndPassword({
//   required String email,
//   required String password,
//  }) async{
//   await _firebaseAuth.createUserWithEmailAndPassword(
//     email:email,
//      password:password
//   );
//  }

//  Future signOut() async{
//   await _firebaseAuth.signOut();
//  }
 
//  }