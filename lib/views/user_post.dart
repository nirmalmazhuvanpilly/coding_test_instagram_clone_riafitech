import 'package:flutter/material.dart';

class UserPost extends StatefulWidget {
  @override
  _UserPostState createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  String title =
      "Easy acrylic painting lesson | City Walk Girl in the Rain | Umbrella Art Easy acrylic painting lesson | City Walk Girl in the Rain | Umbrella Art";

  String firstHalf;

  String secondHalf;

  bool flag;

  @override
  void initState() {
    _check();
    super.initState();
  }

  void _check() {
    if (title.length > 50) {
      firstHalf = title.substring(0, 50);
      secondHalf = title.substring(50, title.length);
      flag = true;
    } else {
      firstHalf = title;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(),
                  Text("Varun Aditya"),
                ],
              ),
              Icon(Icons.more),
            ],
          ),
        ),
        Container(
          child: Image(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://i.ytimg.com/vi/yNx5co12pIA/maxresdefault.jpg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.comment),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.save),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 8),
                  CircleAvatar(radius: 8),
                  CircleAvatar(radius: 8),
                ],
              ),
              Text("Liked by neeharika_boda and 62,707 others"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: flag
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            flag = !flag;
                          });
                        },
                        child: Text("Varun Aditya $firstHalf ...more"),
                      )
                    : Text("Varun Aditya $title"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text("View all 931 comments")),
        ),
      ],
    );
  }
}
