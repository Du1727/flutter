import 'package:flutter/material.dart';
import 'package:navigator_named_v2_copy/first_page.dart';
import 'package:navigator_named_v2_copy/routes.dart';
import 'package:navigator_named_v2_copy/second_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        Routes.first: (context) => const FirstPage(),
        Routes.second: (context) => const SecondPage(),

      },
      initialRoute: Routes.first,
    );
  }
}

