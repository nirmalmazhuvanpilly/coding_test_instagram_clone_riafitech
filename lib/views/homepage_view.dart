import 'package:coding_test_instagram_clone_riafitech/models/homepage_model.dart';
import 'package:coding_test_instagram_clone_riafitech/services/home_api.dart';
import 'package:coding_test_instagram_clone_riafitech/views/user_post.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  HomeApi api = new HomeApi();
  HomePageModelList homeData = new HomePageModelList();

  @override
  void initState() {
    fetchHomeData();
    super.initState();
  }

  Future<void> fetchHomeData() async {
    homeData = await api.homeDetails();
  }

  Future<void> refresh() async {
    print("Refreshed");
    homeData = await api.homeDetails();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refresh,
      child: FutureBuilder(
          future: fetchHomeData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: homeData.homePageModel.length,
                itemBuilder: (context, index) {
                  return UserPost(
                    image: homeData.homePageModel
                        .elementAt(index)
                        .highThumbnail
                        .toString(),
                    channelName: homeData.homePageModel
                        .elementAt(index)
                        .channelname
                        .toString(),
                    title: homeData.homePageModel
                        .elementAt(index)
                        .title
                        .toString(),
                    dp: homeData.homePageModel
                        .elementAt(index)
                        .highThumbnail
                        .toString(),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
