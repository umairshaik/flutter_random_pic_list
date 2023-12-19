class ImageModel {
  int id;
  String url;
  String title;
  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson)
      : this(
          parsedJson['id'],
          parsedJson['url'],
          parsedJson['title'],
        );
}
