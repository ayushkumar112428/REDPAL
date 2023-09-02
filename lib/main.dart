import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myreadpal/screens/Home/home.dart';
import 'package:myreadpal/screens/loginpage/login.dart';
import 'package:myreadpal/screens/loginpage/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    color: Colors.blue,
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'login': (context) => const Mylogin(),
      'register': (context) => const MyRegister(),
      'home': (context) => const Myhome(),
      //'book':(context)=> const bodyhome(),
    },
  );
  }
}