import 'package:flutter/material.dart';
import 'package:likevice/models/post.dart';
import 'package:likevice/widgets/online_widget.dart';
import 'package:likevice/widgets/post_widget.dart';
import 'package:likevice/widgets/separator_widget.dart';
import 'package:likevice/widgets/stories_widget.dart';
import 'package:likevice/widgets/write_something_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          WriteSomethingWidget(),
          // OnlineWidget(),
          SeparatorWidget(),
          StoriesWidget(),
          for(Post post in posts) Column(
            children: <Widget>[
              SeparatorWidget(),
              PostWidget(post: post),
            ],
          ),
          SeparatorWidget(),
        ],
      ),
    );
  }
}