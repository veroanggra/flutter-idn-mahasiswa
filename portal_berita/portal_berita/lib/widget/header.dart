import 'package:flutter/material.dart';
import 'package:portal_berita/bloc/headline_bloc.dart';
import 'package:portal_berita/model/article_response.dart';
import 'package:portal_berita/theme/custom_widget.dart';

class HeaderNews extends StatefulWidget {
  @override
  _HeaderNewsState createState() => _HeaderNewsState();
}

class _HeaderNewsState extends State<HeaderNews> {
  @override
  void initState() {
    super.initState();
    getTopHeadlineBloc..getHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ArticleResponse>(
      stream: getTopHeadlineBloc.subject.stream,
      builder: (context, AsyncSnapshot<ArticleResponse> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.status != null && snapshot.data.status.length > 0) {
            return errorHandleWidget(snapshot.data.status);
          }
          return _headlineWidgetSlider(snapshot.data);
        }
      },
    );
  }

  Widget _headlineWidgetSlider(ArticleResponse data) {}
}
