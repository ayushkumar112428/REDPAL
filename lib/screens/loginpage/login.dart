// ignore_for_file: prefer_final_fields, body_might_complete_normally_nullable, empty_statements, avoid_print, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myreadpal/screens/Home/home.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final String username;
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
    // var ishiddenpassword = true;
    // var ishiddenusername = true;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/image/login.png'),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 165, top: 130),
              child: const Text(
                'welcome\nBack',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.47,
                    left: 50,
                    right: 50),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      //     reusableTextField("Enter UserName", Icons.person_outline, false,
                      // _emailTextController),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter your Email.";
                          }
                        },
                        controller: _emailTextController,
                        decoration: InputDecoration(
                            fillColor: Colors.white24,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter your password.";
                          }
                        },
                        controller: _passwordTextController,
                        decoration: InputDecoration(
                            fillColor: Colors.white24,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Sign in',
                            style: TextStyle(
                                color: Color(0xff4c505b),
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          GestureDetector(
                            onTap: () {
                              // if(_formKey.currentState!.validator()){
                              //   Navigator.pushNamed(context, 'home');
                              // }
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: const Color(0xff4c505b),
                              child: IconButton(
                                color: Colors.white,
                                onPressed: () {
                                  if (_formkey.currentState!.validate()) {
                                    FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: _emailTextController.text,
                                            password:
                                                _passwordTextController.text)
                                        .then((value) {
                                      // Navigator.push(context,MaterialPageRoute(builder: (context) =>const Myhome()));
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Myhome()));
                                    });
                                    // Navigator.pushNamed(context, 'home');
                                  } else {}
                                  ;
                                },
                                icon: const Icon(Icons.arrow_forward),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: googleLogin,
                            child: const Text(
                              'forgot password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              // offset: Offset(25, 25),
                              blurRadius: 120,
                              spreadRadius: 0.5,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10)),
                          GestureDetector(
                            onTap: googleLogin,
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    // offset: Offset(25, 25),
                                    blurRadius: 120,
                                    spreadRadius: 0.5,
                                    color: Colors.grey,
                                  ),
                                ],
                                image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                      "assets/image/googlelogo.webp"),
                                ),
                              ),
                              // child: Text("Google login."),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: googleLogin,
                            child: Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                                // gradient: LinearGradient(colors: [
                                // // hexStringToColor("b74093"),
                                // // hexStringToColor("CB2B95"),
                                // // hexStringToColor("FFFFFF"),
                                // hexStringToColor("FFFFFF"),
                                // hexStringToColor("5E61F4"),
                                // hexStringToColor("FFFFFF"),
                                // hexStringToColor("5E61F4"),
                                // // hexStringToColor("0055EB"),
                                // ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                boxShadow: const [
                                  BoxShadow(
                                    // offset: Offset(25, 25),
                                    blurRadius: 120,
                                    spreadRadius: 0.5,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              child: const Center(
                                  child: Text(
                                "Google Login",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                              // child: Text("Google login."),
                            ),
                          ),
                          // ElevatedButton(
                          //   onPressed: googleLogin,
                          //   child: Text("Google login."),
                          // )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // ElevatedButton(
                      //   onPressed: googleLogin,
                      //   child: Text("Google login."),
                      // )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);
      // Navigator.push(context, MaterialPageRoute(builder: (context) => const Myhome()));
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Myhome()));
      return reslut.displayName;
    } catch (e) {
      print(e);
    }
  }
}
