// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelbuddy/profile_screens/bookmark.dart';
import 'package:travelbuddy/profile_screens/edit_profile.dart';
import 'package:travelbuddy/profile_screens/previous_trips.dart';
import 'package:travelbuddy/profile_screens/settings.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            CircleAvatar(
              radius: screenWidth * 0.15,
              backgroundImage: NetworkImage(
                "https://tse4.mm.bing.net/th?id=OIP.PMhANanxddOBObcYxcYOcwHaGy&pid=Api&P=0&h=220",
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Harsh',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Travel Trips',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                '238',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.bookmark_border),
                  title: Text(
                    'Bookmarked',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookMarkScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text(
                    'Previous Trips',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PriviousTrips()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HealthyAndSafety()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
