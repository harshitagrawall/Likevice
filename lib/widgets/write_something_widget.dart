import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WriteSomethingWidget extends StatelessWidget {
  const WriteSomethingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('assets/Mike Tyler.jpg'),
              ),
              SizedBox(width: 7.0),
              // Container(
              //   height: 60,
              //   width: MediaQuery.of(context).size.width/1.4,
              //   padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              //   child: TextField(
              //     maxLines: 1,
              //     style: TextStyle(fontSize: 13),
              //     textAlignVertical: TextAlignVertical.center,
              //     decoration: InputDecoration(
              //       filled: true,
              //       prefixIcon: Icon(Icons.search, color: Colors.black),
              //       border: OutlineInputBorder(
              //         // borderSide: BorderSide.none,
              //         borderSide: BorderSide(color: Colors.grey.shade400),
              //           borderRadius: BorderRadius.all(Radius.circular(15))),
              //       fillColor: Colors.grey.shade200,
              //       contentPadding: EdgeInsets.zero,
              //       hintText: 'What are you looking for...?',
              //     ),
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                height: 40,
                width: MediaQuery.of(context).size.width / 1.4,
                child: TextField(
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(30),
                    ),
                      contentPadding: EdgeInsets.only(
                        bottom: 20,left: 10  // HERE THE IMPORTANT PART
                      ),
                      fillColor: Colors.white,
                    hintText: "What's on your mind? "
                  ),
                  style: TextStyle(fontSize: 13),
                ),
              ),

              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              //   height: 40.0,
              //   width: MediaQuery.of(context).size.width/1.4,
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       width: 1.0,
              //       color: (Colors.grey[400])!
              //     ),
              //     borderRadius: BorderRadius.circular(30.0)
              //   ),
              //   child: TextField(
              //     maxLines: 5,
              //       decoration: InputDecoration(
              //         contentPadding: EdgeInsets.symmetric(vertical: 40),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(30),
              //     ),
              //
              //     hintText: 'Hello There',
              //   )),
              // )
            ],
          ),
        ),
        Divider(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.live_tv,
                    size: 20.0,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Live',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                ],
              ),
              Container(
                  height: 20, child: VerticalDivider(color: Colors.grey[600])),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.photo_library,
                    size: 20.0,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5.0),
                  Text('Photo',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                ],
              ),
              Container(
                  height: 20, child: VerticalDivider(color: Colors.grey[600])),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.video_call,
                    size: 20.0,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Video',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
