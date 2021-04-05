import 'package:flutter/material.dart';
import 'package:latihan1/widgets/lamaran_sukses.dart';
import 'package:supercharged/supercharged.dart';

class Lamaran extends StatefulWidget {
  @override
  _LamaranState createState() => _LamaranState();
}

void _openPopupBerhasil(context) {
  Navigator.of(context).push(new MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return new LamaranSukses();
      },
      fullscreenDialog: true));
}

class _LamaranState extends State<Lamaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "75A6FF".toColor(),
      body: Stack(
        children: [
          ////Top
          SizedBox(
            height: 40,
          ),
          ////Body
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 40),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ////Body Atas
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 130,
                        ),
                        Text(
                          "Kirim Lamaran",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        SafeArea(
                          child: Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.topRight,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/close.png'))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ////Body Tengah
                  Container(
                    height: 650,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Text(
                            "Upload CV KAMU",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.fromLTRB(15, 10, 130, 10),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Upload file CV kamu",
                                style: TextStyle(color: "808D9D".toColor()),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: "528FFF".toColor(),
                              ),
                              child: Text(
                                "Pilih File",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 550,
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    "Surat Lamaran Kerja",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: "F4F9F9".toColor()),
                                child: TextField(
                                  maxLines: 25,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText:
                                          "Ketikkan surat lamaran kerja kamu"),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ////Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    offset: Offset(
                      2,
                      2,
                    ),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _openPopupBerhasil(context);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 126),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: "75A6FF".toColor(),
                      ),
                      child: Text(
                        "Kirim Lamaran",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
