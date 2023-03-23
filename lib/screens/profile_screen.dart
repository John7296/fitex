
import 'package:fitex/utils/constants.dart';
import 'package:fitex/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151718),
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Profile"),
         
          backgroundColor: kAppBar,
          actions: [
          ],
        ),
        body: ListView(
          
          children: [
            SizedBox(height: 10,),
          ProfileWidget(text: 'Sam James\nsam@gmail.com\n', height:size.height*.20 , image: 'assets/images/profile_avatar.png'),
            SizedBox(height: 10,),
            profileCard('My achievements',Icons.local_activity_outlined),
            SizedBox(height: 10,),
            profileCard('Personal Trainer',Icons.person_2),
            SizedBox(height: 10,),
            profileCard('Details',Icons.book),
            SizedBox(height: 10,),
            profileCard('Support',Icons.support_agent),
            SizedBox(height: 10,),
            profileCard('Logout',Icons.logout_rounded),
          ],
        ), ),
    );
  }

  Widget profileCard(String text,IconData icon) {
    return Card(
      color: Color(0xff1e2021),
            child: ListTile(
              
              leading: Icon(icon,size: 50,color: Colors.white,),
              title: Text(text,style: TextStyle(color: Colors.white),),
            ),
          );
  }
}