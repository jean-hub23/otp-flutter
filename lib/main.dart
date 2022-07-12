import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:otp/pages/pages.dart';
import 'package:otp/providers/input_provider.dart';
import 'package:otp/providers/verifcation_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => InputProvider()),
        ChangeNotifierProvider(create: (context) => VerificationProvider()),
      ],
      child: const MyAppState(),
    );
    

  }
}

class MyAppState extends StatelessWidget {

  const MyAppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Message Auth',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primaryColorDark: const Color(0xff1B1A23),
        fontFamily: 'Giorgia',


        textTheme: const TextTheme(


          bodyText2: TextStyle(color: Colors.white),
          headline6: TextStyle(color: Colors.white),

        )
      ),

      home: WelcomePage(),

      routes: {
        'welcome' : (context) => WelcomePage(),
        'home' : (context) => HomePage(),
        'verification' : (context) => VerificationMethodPage(),
        'verification-code' : (context) => VerificationCodePage(),
      },

    );

  }
}
