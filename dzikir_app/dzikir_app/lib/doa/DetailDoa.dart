import 'package:dzikir_app/model/doa.dart';
import 'package:flutter/material.dart';

class DetailDoa extends StatelessWidget {
  final Doa  title;

  const DetailDoa({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          title.title,
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.grey[600]),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          title.arab,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Colors.grey[700]),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            title.latinArab,
                            style: TextStyle(color: Colors.grey[500]),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
