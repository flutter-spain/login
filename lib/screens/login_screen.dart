// fl-screen

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
   
const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
      await Future.delayed(const Duration(seconds: 2));
      print('Email: ${_emailController.text}');
      print('Password: ${_passwordController.text}');
  }

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
            
                // Logo
                const Icon(Icons.android, size: 100, 
                     color: Colors.black),  
                const SizedBox(height: 75),
            
                // Hello again !
                Text('Hello again !',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                ),
            
                const SizedBox(height: 10),
            
                const Text('Welcome back, you\'ve been missed',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
            
                const SizedBox(height: 50),
            
                // Email field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                          hintText: 'Email',
                          fillColor: Colors.grey[200],
                          filled: true,
                        )
                      ),
                   ),
                    
                  
                
            
            
                const SizedBox(height: 25),
                    
                // Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                          border:  InputBorder.none,
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.key),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                    
                // sign_in_button
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: GestureDetector(
                    onTap:signIn,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        ),
                      child: const Center(
                        child:  Text('Sign in',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                     
                // not a member ? sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Not a member ?', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),),
                    Text(' Register now', 
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                        ),),
                  ],
                )
                      
                ],),
            ),
          ),
        )
    );
  }
}