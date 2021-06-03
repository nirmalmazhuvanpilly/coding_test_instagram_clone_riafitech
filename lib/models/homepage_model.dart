class HomePageModel {
  HomePageModel({
    this.id,
    this.channelname,
    this.title,
    this.highThumbnail,
    this.lowThumbnail,
    this.mediumThumbnail,
  });

  String id;
  String channelname;
  String title;
  String highThumbnail;
  String lowThumbnail;
  String mediumThumbnail;

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
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "channelname": channelname == null ? null : channelname,
        "title": title == null ? null : title,
        "high thumbnail": highThumbnail == null ? null : highThumbnail,
        "low thumbnail": lowThumbnail == null ? null : lowThumbnail,
        "medium thumbnail": mediumThumbnail == null ? null : mediumThumbnail,
      };
}

class HomePageModelList {
  List<HomePageModel> homePageModel;
  HomePageModelList({this.homePageModel});

  factory HomePageModelList.fromJson(List<dynamic> parsedJson) {
    // ignore: deprecated_member_use
    List<HomePageModel> homePageModel = new List<HomePageModel>();
    homePageModel = parsedJson.map((i) => HomePageModel.fromJson(i)).toList();
    return new HomePageModelList(homePageModel: homePageModel);
  }
}
