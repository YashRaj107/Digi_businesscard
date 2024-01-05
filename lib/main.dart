import 'package:flutter/material.dart';
import 'package:instagram/Pages/BusinessCardHolder.dart';
import 'Pages/card.dart';
import 'Pages/form2.dart';
import 'Pages/formnew.dart';
import 'Pages/CDlandingpage.dart';
import 'Pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Business Card',
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.pinkAccent,elevation: 0),
      ),
      home:  LoginPage(),
      initialRoute: '/loginpage',
      routes: {
      '/loginpage': (context) => LoginPage(),
        '/CardDetails': (context)=> CardDetails(),
        '/form1': (context)=> form1(),
        '/form2':(context)=> form2(),

      },
    );
  }
}



