import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl="https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/165696395/original/cc09638ff997c1760856a66f3bb61247a11797b5/desing-for-your-company-name.jpg";

    return Drawer(
      child: Container(
        color:Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding:EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
              margin:EdgeInsets.zero,
              accountName:Text('Dhontech'),
              accountEmail: Text('dhontech@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:NetworkImage (imageUrl),
              ),
              ),
            ),
            ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text('Home',textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
            ),
             ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text('Profile',textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
            ),
             ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text('Email Dhontech',textScaleFactor: 1.2, style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}