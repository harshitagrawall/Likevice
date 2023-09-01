import 'package:flutter/material.dart';
import 'package:likevice/homeTabs/friends_tab.dart';
import 'package:likevice/homeTabs/home_tab.dart';
import 'package:likevice/homeTabs/menu_tab.dart';
import 'package:likevice/homeTabs/message_tab.dart';
import 'package:likevice/homeTabs/notifications_tab.dart';
import 'package:likevice/homeTabs/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Likevice',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 27.0,
                    fontWeight: FontWeight.bold)),
            Icon(Icons.search,color: Colors.black,size: 26,),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottom: TabBar(
          indicatorColor: Colors.blueAccent,
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.blueAccent,
          tabs: const [
            Tab(icon: Icon(Icons.home, size: 30.0,color: Colors.black,)),
            Tab(icon: Icon(Icons.people, size: 30.0,color: Colors.black,)),
            // Tab(icon: Icon(Icons.ondemand_video, size: 30.0)),
            Tab(icon: Icon(Icons.notifications, size: 30.0,color: Colors.black,)),
            Tab(child: Image(image: AssetImage('assets/messenger.png'),height: 25,width: 25,)),
            Tab(icon: Icon(Icons.menu, size: 30.0,color: Colors.black,)),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        HomeTab(),
        FriendsTab(),
        // WatchTab(),
        NotificationsTab(),
        Message(),
        MenuTab()
      ]),
    );
  }
}
