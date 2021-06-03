import 'package:flutter/material.dart';

class UserPost extends StatefulWidget {
  final String image;
  final String channelName;
  final String title;
  final String dp;
  UserPost({this.image, this.channelName, this.title, this.dp});
  @override
  _UserPostState createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  String firstHalf;

  bool flag;

  @override
  void initState() {
    flag = true;
    _check();
    super.initState();
  }

  void _check() {
    if (widget.title.length > 50) {
      firstHalf = widget.title.substring(0, 50);
    } else {
      firstHalf = widget.title;
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
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(widget.dp), fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(widget.channelName),
                ],
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          child: Image(
            fit: BoxFit.contain,
            image: NetworkImage(widget.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.favorite_border),
                  SizedBox(width: 5),
                  Icon(Icons.mode_comment_outlined),
                  SizedBox(width: 5),
                  Icon(Icons.send),
                ],
              ),
              Icon(Icons.storefront),
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
                    : Text("Varun Aditya ${widget.title}"),
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
