import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  final String text;

  TopTitle({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }
}

class TextChange extends StatefulWidget {
  final String text;

  TextChange({Key key, this.text}) : super(key: key);

  @override
  _TextChangeState createState() => _TextChangeState();
}

class _TextChangeState extends State<TextChange> {
  double _textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        RaisedButton(
          child: Text("Zoom"),
          onPressed: (){
            setState(() {
              _textSize = 40.0;
            });
          },
        )
      ],
    );
  }
}
