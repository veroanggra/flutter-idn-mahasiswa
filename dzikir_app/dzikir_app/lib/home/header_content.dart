import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: BackgroundClip(),
          child: Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.teal[200], Colors.teal[700]],
            )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 90),
          child: Row(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image(
                      image: AssetImage('assets/img/icon.png'), width: 100),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text('Dzikir Application',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text(
                      'Allah loves those who believe',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class BackgroundClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
