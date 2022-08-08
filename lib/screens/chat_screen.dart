import 'package:exela_mobile/services/hex_from_color.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  // Text(
                  //   "Your Chats",
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 22,
                  //       color: HexColor.fromHex("#061428")),
                  // ),
                  Container(
                      width: 360,
                      height: 60,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 360,
                                height: 55,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(15.359999656677246),
                                    topRight:
                                        Radius.circular(15.359999656677246),
                                    bottomLeft:
                                        Radius.circular(15.359999656677246),
                                    bottomRight:
                                        Radius.circular(15.359999656677246),
                                  ),
                                  color: Color.fromRGBO(245, 245, 245, 1),
                                ))),
                        const Positioned(
                            top: 13,
                            left: 12,
                            child: Text(
                              'Find your message',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(168, 168, 168, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 15.359999656677246,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                                  ),
                            )),
                      ])),
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
                                  width: MediaQuery.of(context).size.width / 7,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Jacob Kulikowski",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                            color:
                                                HexColor.fromHex("#061428"))),
                                    Text("Hello world!",
                                        style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: HexColor.fromHex("#061428")))
                                  ],
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                Image.asset(
                                  'assets/images/Video.png',
                                  width: MediaQuery.of(context).size.width / 12,
                                ),
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
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/messages-3.png',
                    width: MediaQuery.of(context).size.width / 10,
                  )),
              TextButton(
                  onPressed: () {},
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
