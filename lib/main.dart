import 'package:doc_appointment/mafdy_samuel/lib/complete.dart';
import 'package:doc_appointment/mafdy_samuel/lib/createaccount.dart';
import 'package:doc_appointment/mafdy_samuel/lib/login.dart';
import 'package:doc_appointment/mafdy_samuel/lib/onboardScreens.dart';
import 'package:doc_appointment/screens/home_screen.dart';
import 'package:doc_appointment/screens/tabs_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
  // runApp(
  //   const MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     //theme: ThemeData(backgroundColor: Colors.white),
  //     home: TabsScreen(),
  //   ),
  // );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (FirebaseAuth.instance.currentUser != null && FirebaseAuth.instance.currentUser!.emailVerified) 
      ? TabsScreen() 
      : OnBoardScreen(),
      debugShowCheckedModeBanner: false,
    
      routes: {"login":(context) => LoginPage(),
      "signup":(context) => createaccount(),
      "completeprofile":(context) => CompleteProfilePage(),
      "onboard":(context) => OnBoardScreen(),
      "homepage":(context) => TabsScreen()},
    );
  }
}
