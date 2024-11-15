import 'package:flutter/material.dart';
import 'package:food_order/pages/loginpage.dart';
import 'package:food_order/themes/theme_test.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_)=> ThemeTest())],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeTest>().themeData,
      home: Loginpage()
    );
  }
}



