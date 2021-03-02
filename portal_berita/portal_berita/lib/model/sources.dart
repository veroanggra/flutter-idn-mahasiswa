class SourcesModel {
  String id;
  String name;
  String description;
  String url;
  String category;
  String language;
  String country;

  SourcesModel(
      {this.id,
        this.name,
        this.description,
        this.url,
        this.category,
        this.language,
        this.country});

  SourcesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    url = json['url'];
    category = json['category'];
    language = json['language'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['url'] = this.url;
    data['category'] = this.category;
    data['language'] = this.language;
    data['country'] = this.country;
    return data;
  }
}
