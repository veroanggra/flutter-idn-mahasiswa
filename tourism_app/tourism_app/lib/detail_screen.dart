import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/tourisms.dart';

import 'favorite.dart';

class DetailScreen extends StatelessWidget {
  final Tourisms tourisms;

  const DetailScreen({this.tourisms});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(tourisms.photo),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FavoriteButton(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                tourisms.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(tourisms.schedule)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(tourisms.ticket)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                tourisms.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: tourisms.imgurl.map((url){
                  return Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(url),
                    ),
                  );
                }).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}

