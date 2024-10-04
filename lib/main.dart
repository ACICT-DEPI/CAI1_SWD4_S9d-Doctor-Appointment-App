import 'package:doc_appointment/mafdy_samuel/lib/onboardScreens.dart';
import 'package:doc_appointment/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(const MyApp());
  // runApp(
  //   const MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     //theme: ThemeData(backgroundColor: Colors.white),
  //     home: TabsScreen(),
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
