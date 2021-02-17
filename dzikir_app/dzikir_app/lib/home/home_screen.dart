import 'package:flutter/material.dart';

import 'header_content.dart';
import '../doa/list_doa.dart';
import 'menu_content.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderContent(),
            ContentMenu(),
            ListDoa()
          ],
        ),
      ),
    );
  }
}


