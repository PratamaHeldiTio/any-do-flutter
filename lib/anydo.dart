import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:any_do/detail.dart';
import 'package:any_do/model/data-any-do.dart';

class Todo extends StatelessWidget {
  final String name;
  Todo({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        Container(
          margin:
              const EdgeInsets.only(top: 50, bottom: 10, left: 50, right: 50),
          child: Text(
            "Halo $name tulis semua idemu di any.do",
            style: GoogleFonts.ptSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff000957)),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: listData.length,
              itemBuilder: (context, index) {
                final DataAnyDo anydo = listData[index];
                return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailAnydo(anydo: anydo);
                      }));
                    },
                    child: Card(
                      color: Colors.amber,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(anydo.title,
                                style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: Text(anydo.desc.substring(0, 60),
                                style: GoogleFonts.ptSans(fontSize: 14)),
                          )
                        ],
                      ),
                    ));
              }),
        )
      ],
    )));
  }
}
