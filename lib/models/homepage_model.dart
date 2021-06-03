// To parse this JSON data, do
//
//     final homePageModel = homePageModelFromJson(jsonString);

import 'dart:convert';

List<HomePageModel> homePageModelFromJson(String str) =>
    List<HomePageModel>.from(
        json.decode(str).map((x) => HomePageModel.fromJson(x)));

String homePageModelToJson(List<HomePageModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomePageModel {
  HomePageModel({
    this.id,
    this.channelname,
    this.title,
    this.highThumbnail,
    this.lowThumbnail,
    this.mediumThumbnail,
    this.tags,
  });

  String id;
  String channelname;
  String title;
  String highThumbnail;
  String lowThumbnail;
  String mediumThumbnail;
  List<dynamic> tags;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => HomePageModel(
        id: json["id"] == null ? null : json["id"],
        channelname: json["channelname"] == null ? null : json["channelname"],
        title: json["title"] == null ? null : json["title"],
        highThumbnail:
            json["high thumbnail"] == null ? null : json["high thumbnail"],
        lowThumbnail:
            json["low thumbnail"] == null ? null : json["low thumbnail"],
        mediumThumbnail:
            json["medium thumbnail"] == null ? null : json["medium thumbnail"],
        tags: json["tags"] == null
            ? null
            : List<dynamic>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "channelname": channelname == null ? null : channelname,
        "title": title == null ? null : title,
        "high thumbnail": highThumbnail == null ? null : highThumbnail,
        "low thumbnail": lowThumbnail == null ? null : lowThumbnail,
        "medium thumbnail": mediumThumbnail == null ? null : mediumThumbnail,
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x)),
      };
}
