import 'dart:async';

import 'package:flutter/material.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);


  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
{
  startTimer()
  {
    Timer(const Duration(seconds: 8), () async{

      Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));
    });

  }
  @override

  void initState(){
    super.initState();
    startTimer();
  }
  Widget build(BuildContext context) {
      return Material(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/splash.jpg"),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Sell food",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 40,
                      fontFamily: "Signatra",
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
}
