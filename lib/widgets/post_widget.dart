import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:likevice/models/post.dart';
import 'package:likevice/screens/comments.dart';
import 'package:share_plus/share_plus.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  PostWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImageUrl),
                radius: 20.0,
              ),
              SizedBox(width: 7.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0)),
                  SizedBox(height: 5.0),
                  Text(post.time)
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Text(post.content, style: TextStyle(fontSize: 15.0)),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: double.infinity,
              height: 400,
              child: Image.asset('assets/random image.webp'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.thumbsUp,
                      size: 15.0, color: Colors.blue),
                  Text(' ${post.likes}'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('${post.comments} comments  •  '),
                  Text('${post.shares} shares'),
                ],
              ),
            ],
          ),
          Divider(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  LikeButton(
                    size: 20.0,
                    likeBuilder: (isLiked) {
                      Icon(Icons.ac_unit_outlined);
                    },
                    // likeBuilder: (isLiked) {
                    //   return Icon(
                    //       FontAwesomeIcons.thumbsUp,
                    //   color: isLiked ? Colors.blue : Colors.white,
                    //     size: 20.0,
                    //   );
                    // },
                  ),
                  // Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Like', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Comments()));
                      },
                      child: Icon(FontAwesomeIcons.commentAlt, size: 20.0)),
                  SizedBox(width: 5.0),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Comments()));
                      },
                      child: Text('Comment', style: TextStyle(fontSize: 14.0))),
                ],
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Share.share('${post.comments}');
                      },
                      child: Icon(FontAwesomeIcons.share, size: 20.0)),
                  SizedBox(width: 5.0),
                  GestureDetector(
                      onTap: () {
                        Share.share('${post.comments}');
                      },
                      child: Text('Share', style: TextStyle(fontSize: 14.0))),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
