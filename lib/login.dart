import 'package:any_do/anydo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:any_do/login.dart';
import 'package:any_do/model/data-any-do.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              'Welcome',
              style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Color(0xff000957)),
            ),
            margin: const EdgeInsets.only(top: 130.0, left: 45.0),
          ),
          Container(
            child: Text('to any.do',
                style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xffAAAAAA))),
            margin: const EdgeInsets.only(left: 105.0),
          ),
          InputName(),
          Container(
            child: Center(
              child: Text(
                '"Live life to the fullest, and focus on the positive."',
                style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000957),
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            margin: const EdgeInsets.only(
                top: 100, left: 80, right: 80, bottom: 10),
          ),
          Center(
            child: Text(
              'Matt Cameron',
              style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000957),
                  fontSize: 16),
            ),
          ),
        ],
      ),
    )));
  }
}

class InputName extends StatefulWidget {
  @override
  _InputName createState() => _InputName();
}

class _InputName extends State<InputName> {
  var name = 'User';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 300,
              margin: const EdgeInsets.only(top: 87),
              child: TextField(
                style: GoogleFonts.ptSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000957)),
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff000957), width: 2)),
                    hintText: 'Input Your name',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffAAAAAA)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffAAAAAA), width: 2))),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
          ],
        ),
        Container(
          width: 120,
          height: 48,
          margin: const EdgeInsets.only(top: 100.0, left: 50),
          child: ElevatedButton(
            child: Text(
              'Next',
              style:
                  GoogleFonts.ptSans(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(primary: Color(0xff000957)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Todo(name: name);
              }));
            },
          ),
        )
      ],
    );
  }
}
