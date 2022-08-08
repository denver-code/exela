import 'package:exela_mobile/services/hex_from_color.dart';
import 'package:exela_mobile/services/key_data.dart';
import 'package:flutter/material.dart';

class CoverScreen extends StatefulWidget {
  const CoverScreen({Key? key}) : super(key: key);

  @override
  State<CoverScreen> createState() => _CoverScreenState();
}

class _CoverScreenState extends State<CoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
          ),
          Center(
            child: Image(
              image: const AssetImage("assets/images/Img_girl_pc.png"),
              width: MediaQuery.of(context).size.width / 1.5,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          Text(
            "Let's you in",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: HexColor.fromHex("#061428")),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/Button_Google.png',
                width: MediaQuery.of(context).size.width / 1.4,
              )),
          TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/Button_facebook.png',
                width: MediaQuery.of(context).size.width / 1.4,
              )),
          TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/Button_Apple.png',
                width: MediaQuery.of(context).size.width / 1.4,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Center(
            child: Image(
              image: const AssetImage("assets/images/text_&_lines.png"),
              width: MediaQuery.of(context).size.width / 1.5,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          TextButton(
              onPressed: () {
                getStringData("token").then((String? value) {
                  if (value != null) {
                    //?.parseBool() ?? false
                    Navigator.of(context).pushNamed("/feed");
                  } else {
                    Navigator.of(context).pushNamed("/signin");
                  }
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(51, 94, 247, 0.25),
                        offset: Offset(4, 8),
                        blurRadius: 24)
                  ],
                  color: Color.fromRGBO(127, 140, 255, 1),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text(
                      'Sign in with password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          letterSpacing: 0.20000000298023224,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                          ),
                    ),
                  ],
                ),
              )),
          TextButton(
              onPressed: () {
                SecureStorage.readSecureData("token").then((String? value) {
                  if (value != null) {
                    //?.parseBool() ?? false
                    Navigator.of(context).pushNamed("/feed");
                  } else {
                    Navigator.of(context).pushNamed("/signup");
                  }
                });
              },
              child: Image.asset(
                'assets/images/dph.png',
                width: MediaQuery.of(context).size.width / 2,
              )),
        ],
      )),
    );
  }
}
