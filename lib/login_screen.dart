import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible=true;

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
                  tabs: const [
                    Text('Sign In',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                    Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                  children: [
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                        child: Column(
                          children: [
                            const Text('Welcome Back !',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 10),
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
                            const SizedBox(height: 15),
                            TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                fillColor: Colors.white.withOpacity(0.8),
                                filled: true,
                                hintText: 'Password',
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(
                                          () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Forgot Password?',style: TextStyle(color: Colors.white,fontSize: 16),),
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
                                child: const Center(child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 6.0),
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
