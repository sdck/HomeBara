import 'package:barahome/Views/auth/payment_option_view.dart';
import 'package:barahome/Views/auth/sign_up_form_2_view.dart';
import 'package:barahome/Views/home_view.dart';
import 'package:barahome/Views/landing_page_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);
  // Sign In authentication methods
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<Widget> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password:
              password); // parameters for the email and password sign In method
      return HomeView(); // brings to homeview if the credentials are right
      // ignore: unused_catch_clause
    } on FirebaseAuthException catch (e) {
      return LandingPageView(); // stays on login view if the credentials are wrong
    }
  }

  // Sign up authentication method
  Future<Widget> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return PaymentOptions();
      // ignore: unused_catch_clause
    } on FirebaseAuthException catch (e) {
      return SignUpPage2View();
    }
  }
}
