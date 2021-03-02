import 'package:portal_berita/model/sources.dart';

class SourcesResponse {
  String status;
  List<SourcesModel> sources;

  SourcesResponse({this.status, this.sources});

  SourcesResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['sources'] != null) {
      sources = new List<SourcesModel>();
      json['sources'].forEach((v) {
        sources.add(new SourcesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.sources != null) {
      data['sources'] = this.sources.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

