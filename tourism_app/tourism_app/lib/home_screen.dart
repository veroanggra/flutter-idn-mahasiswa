import 'package:flutter/material.dart';
import 'package:tourism_app/detail_screen.dart';
import 'package:tourism_app/dummy.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata"),
      ),
      body:
      ListView(children: tourismsList.map((place) {
        return FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(tourisms: place);
            }));

          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(flex: 1, child: Image.asset(place.photo)),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          place.name,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(place.address)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList()
      ),
    );
  }
}
