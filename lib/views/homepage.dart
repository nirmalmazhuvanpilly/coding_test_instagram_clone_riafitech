import 'package:flutter/material.dart';

import 'homepage_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.camera),
        title: Text("Instagram"),
        actions: <Widget>[Icon(Icons.share)],
      ),
      body: HomePageView(),
    );
  }
}
