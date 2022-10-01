import 'package:flutter/material.dart';
import 'package:patreon_like_mobile_app/pages/subscribe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SubscribeCreator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
