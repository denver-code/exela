import 'package:exela_mobile/services/hex_from_color.dart';
import 'package:exela_mobile/services/key_data.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'dart:convert';
import '../services/httpApi.dart';

class SIgnUpScreen extends StatefulWidget {
  const SIgnUpScreen({Key? key}) : super(key: key);

  @override
  State<SIgnUpScreen> createState() => _SIgnUpScreenState();
}

class _SIgnUpScreenState extends State<SIgnUpScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  bool _visible = false;
  String _email_text = "";
  String _pass_text = "";
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
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image(
                    image: const AssetImage("assets/images/Logo_exala.png"),
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                ),
                Text(
                  "Create Your Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 29,
                      color: HexColor.fromHex("#061428")),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 15.5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: const Color.fromRGBO(247, 248, 249, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(232, 232, 232, 1),
                      width: 1,
                    ),
                  ),
                  child: TextFormField(
                      controller: _email,
                      onChanged: (text) {
                        _email_text = text;
                        if (text.isNotEmpty) {
                          _visible = true;
                        } else {
                          _visible = false;
                        }
                      },
                      inputFormatters: const [],
                      style: TextStyle(color: HexColor.fromHex("#5B5A5C")),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        labelStyle: TextStyle(
                            color: HexColor.fromHex("#5B5A5C"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        helperStyle: TextStyle(
                            color: HexColor.fromHex("#5B5A5C"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        hintStyle: TextStyle(
                            color: HexColor.fromHex("#5B5A5C"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        filled: false,
                        fillColor: Colors.transparent,
                        labelText: "Enter your email",
                        hintText: "you@example.com",
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 15.5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: const Color.fromRGBO(247, 248, 249, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(232, 232, 232, 1),
                      width: 1,
                    ),
                  ),
                  child: TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      controller: _pass,
                      onChanged: (text) {
                        _pass_text = text;
                        if (text.isNotEmpty) {
                          _visible = true;
                        } else {
                          _visible = false;
                        }
                      },
                      inputFormatters: const [],
                      style: TextStyle(color: HexColor.fromHex("#5B5A5C")),
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.transparent,
                        )),
                        labelStyle: TextStyle(
                            color: HexColor.fromHex("#5B5A5C"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        helperStyle: TextStyle(
                            color: HexColor.fromHex("#5B5A5C"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        hintStyle: TextStyle(
                            color: HexColor.fromHex("#5B5A5C"),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        filled: false,
                        fillColor: Colors.transparent,
                        labelText: "Enter your password",
                        hintText: "you@example.com",
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                TextButton(
                    onPressed: () {
                      if (_visible) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Row(
                            children: const [
                              Text("Please wait..."),
                              SizedBox(
                                width: 50,
                              ),
                              CircularProgressIndicator(),
                            ],
                          )),
                        );
                        var bytes = utf8.encode(_pass_text);
                        Digest sha256Result = sha256.convert(bytes);
                        Api.post(
                                {
                                  "email": _email_text,
                                  "password_hash": sha256Result.toString()
                                },
                                "public/authorization/signup/",
                                {"Content-Type": "application/json"})
                            .then((_repsonse) async {
                          print(_repsonse);
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          if (_repsonse[0] == 200) {
                            setStringData("token", _repsonse[1]["token"]);
                            Navigator.of(context).pushNamed("/feed");
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(_repsonse[1]["detail"])),
                            );
                          }
                        });
                      }
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Text(
                            'Sign up',
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Center(
                  child: Image(
                    image: const AssetImage(
                        "assets/images/Text_or continue with_&_lines.png"),
                    width: MediaQuery.of(context).size.width / 1.5,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/_Button_Google.png',
                          width: MediaQuery.of(context).size.width / 5,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/_Button Facebook.png',
                          width: MediaQuery.of(context).size.width / 5,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/_Button_Apple.png',
                          width: MediaQuery.of(context).size.width / 5,
                        )),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/dph.png',
                      width: MediaQuery.of(context).size.width / 2,
                    )),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
