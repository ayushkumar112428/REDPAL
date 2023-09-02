// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myreadpal/reusebal/reusebulTwoText.dart';
import 'package:myreadpal/screens/Profile/bodyprofile.dart';
import 'package:myreadpal/screens/loginpage/login.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.grey.shade500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bodyprofile(),
              SizedBox(
                height: 20,
              ),
              ReusebalTwoText(
                text1: 'Address',
                text2: 'Xyz abcd jklRoad rst.',
              ),
              SizedBox(
                height: 20,
              ),
              ReusebalTwoText(
                text1: 'Hobby',
                text2: 'Reading Book, Cricket, Chess.',
              ),
              SizedBox(
                height: 20,
              ),
              ReusebalTwoText(
                text1: 'Interested Book Topic',
                text2: 'History, Leadership, Decision, Goals.',
              ),
              SizedBox(
                height: 20,
              ),
              ReusebalTwoText(
                text1: 'Favourite Book',
                text2:
                    'Bhagavat Gita, Leadership Learning From Chhatrapati Shivaji Maharaj, swamivivekananda.',
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                        // offset: Offset(20, 10),
                        blurRadius: 100,
                        spreadRadius: 2,
                        color: Colors.white60,
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut().then((value) {
                        print("Signed out");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mylogin()));
                      });
                      logout();
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              // ElevatedButton(
              //   child: Text("LogOut"),
              //   onPressed: () {
              //     FirebaseAuth.instance.signOut().then((value) {
              //       print("Signed out");
              //       Navigator.push(
              //           context, MaterialPageRoute(builder: (context) => const Mylogin()));
              //     });
              //     logout();
              //   },
              // ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> logout() async {
  await GoogleSignIn().disconnect();
  FirebaseAuth.instance.signOut();
}
