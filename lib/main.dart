import 'package:flutter/material.dart';
import 'package:login/splashScreen/splash_screen.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),



    );
  }
}

