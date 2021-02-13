import 'package:amatey1_miniproject1_wk5/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:amatey1_miniproject1_wk5/constants.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Sales',
      theme: ThemeData(
        primaryColor: dPrimaryColor,
        scaffoldBackgroundColor: dBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: dTextColor ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}