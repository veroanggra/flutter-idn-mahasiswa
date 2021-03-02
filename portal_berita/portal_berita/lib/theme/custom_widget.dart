import 'package:flutter/cupertino.dart';

Widget errorHandleWidget(String error) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Check your internet connection',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget loadingWidget() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 25.0,
          width: 25.0,
          child: CupertinoActivityIndicator(),
        )
      ],
    ),
  );
}