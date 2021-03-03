import 'package:flutter/material.dart';
import 'package:portal_berita/model/article.dart';

class DetailScreen extends StatefulWidget {
  final ArticleModel article;

  const DetailScreen({Key key, @required this.article}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
