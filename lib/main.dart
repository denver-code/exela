import 'package:exela_mobile/screens/cover_screen.dart';
import 'package:exela_mobile/screens/events_screen.dart';
import 'package:exela_mobile/screens/feed_scren.dart';
import 'package:exela_mobile/screens/messages_screen.dart';
import 'package:exela_mobile/screens/signin_screen.dart';
import 'package:exela_mobile/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exela Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      home: const CoverScreen(),
      routes: {
        "/signin": (_) => const SIgnInScreen(),
        "/signup": (_) => const SIgnUpScreen(),
        "/feed": (_) => const FeedScreen(),
        "/messages": (_) => const MessagesScreen(),
        "/events": (_) => const EventsScreen()
      },
    );
  }
}
