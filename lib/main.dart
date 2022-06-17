import 'package:flutter/material.dart';
import 'package:rentalapp/config/colors.dart';
import 'package:rentalapp/screens/detail.dart';
import 'package:rentalapp/screens/home.dart';
import 'package:rentalapp/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: ColorApp.bg
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        '/detail': (context) => const DetailPage()
      },
    );
  }
}

