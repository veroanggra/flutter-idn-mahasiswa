import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata"),
      ),
      body: FlatButton(
        onPressed: (){

        },
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 1, child: Image.asset('assets/img/asset_ancol.jpg')),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Taman Impian Jaya Ancol',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Jakarta Utara')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
