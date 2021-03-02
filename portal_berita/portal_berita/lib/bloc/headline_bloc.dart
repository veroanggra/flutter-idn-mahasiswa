import 'package:portal_berita/model/article_response.dart';
import 'package:portal_berita/service/repositories.dart';
import 'package:rxdart/rxdart.dart';

class GetHeadlineBloc {
  final NewsRepositories _newsRepositories = NewsRepositories();
  final BehaviorSubject<ArticleResponse> _subject =
      BehaviorSubject<ArticleResponse>();

  getHeadlines() async {
    ArticleResponse response = await _newsRepositories.getTopHeadlines();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ArticleResponse> get subject => _subject;
}

final getTopHeadlineBloc = GetHeadlineBloc();
