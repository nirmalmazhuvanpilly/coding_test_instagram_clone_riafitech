import 'dart:convert';

import 'package:coding_test_instagram_clone_riafitech/models/homepage_model.dart';

import 'package:http/http.dart' as http;

class HomeApi {
  Future<HomePageModelList> homeDetails() async {
    var url = Uri.parse(
        "https://hiit.ria.rocks/videos_api/cdn/com.rstream.crafts?versionCode=40&lurl=Canvas%20painting%20ideas");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      // print(body);

      HomePageModelList homePageModelList = HomePageModelList.fromJson(body);
      // print(homePageModelList.homePageModel[0].id);

      return homePageModelList;
    } else {
      throw Exception("Failed to load Data!");
    }
  }
}
