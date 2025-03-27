import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)                      ],
                      ),
                    )
                  ],
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
