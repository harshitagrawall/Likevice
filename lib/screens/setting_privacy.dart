import 'package:flutter/material.dart';
import 'package:likevice/webview/webview.dart';

class SettingAndPrivacy extends StatefulWidget {
  const SettingAndPrivacy({super.key});

  @override
  State<SettingAndPrivacy> createState() => _SettingAndPrivacyState();
}

class _SettingAndPrivacyState extends State<SettingAndPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Setting & Privacy',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Account',style: TextStyle(color: Colors.grey.shade700,fontSize: 20,fontWeight: FontWeight.bold),),
                Text('update your info to keep your account secure',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Personal and Account information',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.person_2_outlined),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Profile Information',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.security),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Security',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.person_sharp),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Profile Visitor',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Community Standards and Legal policies',style: TextStyle(color: Colors.grey.shade700,fontSize: 17,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.terminal_sharp),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Terms and Sercvices',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.data_exploration),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Data Policy',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.policy),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Cookies Policy',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Community Standards',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.error_outline),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('About',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Support',style: TextStyle(color: Colors.grey.shade700,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.support_sharp),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
                        },
                        child: Text('Help & Support',style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
