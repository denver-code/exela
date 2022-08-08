import 'package:exela_mobile/services/hex_from_color.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Text(
                  "Highlights in City",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: HexColor.fromHex("#061428")),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/HGL_i360.png',
                          width: MediaQuery.of(context).size.width / 4.6,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/HGL_Pier.png',
                          width: MediaQuery.of(context).size.width / 6,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/HGL_PrideParade.png',
                          width: MediaQuery.of(context).size.width / 6,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/HGL_RoyalPavilion.png',
                          width: MediaQuery.of(context).size.width / 6,
                        )),
                  ],
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Text(
                        "Find Clubs",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: HexColor.fromHex("#061428")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/Club_Art.png',
                                width: MediaQuery.of(context).size.width / 3,
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/Club_Volleyball.png',
                                width: MediaQuery.of(context).size.width / 3,
                              )),
                        ],
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: HexColor.fromHex("#061428")),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'assets/images/Post_AtomSpace.png',
                            width: MediaQuery.of(context).size.width / 1,
                          )),
                    ],
                  ),
                ))
              ],
            )),
      ),
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
