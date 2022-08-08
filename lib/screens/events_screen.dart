import 'package:exela_mobile/services/hex_from_color.dart';
import 'package:exela_mobile/services/key_data.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'dart:convert';
import '../services/httpApi.dart';
import 'package:http/http.dart' as http;

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Text(
                    "Events in City",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: HexColor.fromHex("#061428")),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/User 01b.png',
                                  width: MediaQuery.of(context).size.width / 10,
                                ),
                                Column(
                                  children: [
                                    Text("denver-code",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color:
                                                HexColor.fromHex("#061428"))),
                                    Text("Hello world!",
                                        style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: HexColor.fromHex("#061428")))
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  ))
                ],
              ))),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/home-2.png',
                    width: MediaQuery.of(context).size.width / 10,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/search-normal.png',
                    width: MediaQuery.of(context).size.width / 10,
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/messages");
                  },
                  child: Image.asset(
                    'assets/images/messages-3.png',
                    width: MediaQuery.of(context).size.width / 10,
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/events");
                  },
                  child: Image.asset(
                    'assets/images/calendar.png',
                    width: MediaQuery.of(context).size.width / 10,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/frame.png',
                    width: MediaQuery.of(context).size.width / 10,
                  )),
            ]),
      ),
    );
  }
}
