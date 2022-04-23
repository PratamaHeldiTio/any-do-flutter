import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:any_do/model/data-any-do.dart';

class DetailAnydo extends StatelessWidget {
  final DataAnyDo anydo;

  DetailAnydo({required this.anydo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Card(
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: FavoriteButton(),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(anydo.title,
                      style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.bold, fontSize: 28)),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    anydo.desc,
                    style: GoogleFonts.ptSans(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff000957),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
    )));
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButton createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
          size: 36,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        });
  }
}
