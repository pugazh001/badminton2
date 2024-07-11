import 'package:badminton2/screens/contact_page.dart';
import 'package:badminton2/schedule_page.dart';
import 'package:badminton2/screens/gallery_page.dart';
import 'package:badminton2/screens/home_page.dart';
import 'package:badminton2/screens/register_page.dart';
import 'package:badminton2/screens/sign_page.dart';
import 'package:badminton2/screens/tourname_page.dart';
import 'package:badminton2/screens/view_slot.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shuttle Pro Badminton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Shuttle Pro Badminton', textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu,color: Colors.white,),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'), // Ensure you add a background image in your assets
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(0),
            width: 424,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 194, 180, 180).withOpacity(0.8),
              borderRadius: BorderRadius.vertical(top:Radius.circular(50)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Badminton',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Serve it',
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                    );
                  },
                  child: Text('Schedule to Play',style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  final String userName = "Pugazh S";
  final String userEmail = "pugazhenthi27s@gmail.com";
  final String userAvatarUrl = "assets/avathar.jpeg"; // Replace with a valid image URL

  @override
  Widget build(BuildContext context) {
    return Drawer(
     // backgroundColor: Colors.teal,
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(userName),
            accountEmail: Text(userEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(userAvatarUrl),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Sign In'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: Text('Register'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.book_online),
            title: Text('View Booked Slots'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ViewBookedSlotsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.sports_tennis),
            title: Text('Tournament'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TournamentPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Gallery'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GalleryPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}














