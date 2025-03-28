import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                width: double.infinity,
                // decoration: BoxDecoration(
                  // color: Colors.indigo,
                  // borderRadius: BorderRadius.circular(20)
                // ),
                child: TabContainer(
                  color: Colors.indigo,
                  tabs: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.indigo),
                          color: Colors.indigo,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 1),
                          child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.indigo),
                          color: Colors.indigo,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 1),
                          child: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                        )),
                  ],
                  children: [
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                        child: Column(
                          children: [
                            Text('Welcome Back !',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10),
                            TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              fillColor: Colors.white.withOpacity(0.8),
                              filled: true,
                              hintText: 'Email',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              prefixIcon: const Icon(Icons.mail),
                              focusColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                            SizedBox(height: 15),
                            TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.8),
                                filled: true,
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                prefixIcon: const Icon(Icons.lock),
                                focusColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Forgot Password?',style: TextStyle(color: Colors.white,fontSize: 16),),
                              ],
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 52.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: const Center(child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 6.0),
                                  child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                )),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(width: 100,
                                height: 1,
                                color: Colors.white,),
                                const Text(' Or ',style: TextStyle(color: Colors.white,fontSize: 18),),
                                Container(width: 100,
                                  height: 1,
                                  color: Colors.white,),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 52.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Center(child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Text('Sign in with google',style: TextStyle(fontSize: 16),),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                    ),
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
