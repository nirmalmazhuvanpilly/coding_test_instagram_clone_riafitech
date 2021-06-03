import 'dart:convert';

import 'package:coding_test_instagram_clone_riafitech/models/homepage_model.dart';

import 'package:http/http.dart' as http;

// var map1 = Map.fromIterable(list, key: (e) => e.name, value: (e) => e.age);

class HomeApi {
  Future<HomePageModel> homeDetails() async {
    var homePageModel;
    var map;
    var url = Uri.parse(
        "https://hiit.ria.rocks/videos_api/cdn/com.rstream.crafts?versionCode=40&lurl=Canvas%20painting%20ideas");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      // print(body);
      map = Map<String, dynamic>.fromIterable(
        body,
        key: (element) => element.toString(),
        value: (element) => element.toString(),
      );
      // print(map);
      homePageModel = HomePageModel.fromJson(map);

      return homePageModel;
    } else {
      throw Exception("Failed to load Data!");
    }
  }
}
