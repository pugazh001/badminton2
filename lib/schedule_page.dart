//import 'package:ecommerce_mobile_app/constants.dart';
//import 'package:ecommerce_mobile_app/screens/Cart/cart_screen.dart';
//import 'package:ecommerce_mobile_app/screens/Home/home_screen.dart';
//import 'package:ecommerce_mobile_app/screens/Profile/profile.dart';
import 'package:badminton2/screens/contact_page.dart';
import 'package:badminton2/screens/gallery_page.dart';
import 'package:badminton2/screens/home_page.dart';
import 'package:badminton2/screens/tourname_page.dart';
import 'package:badminton2/screens/view_slot.dart';
import 'package:flutter/material.dart';
//import 'Favorite/favorite.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int cuttentIndex = 2;//2
   
   
    List screens =  [
   
   //HomePage(),
   TournamentPage(),
   ViewBookedSlotsPage(),
   HomePage(),
   //HomePage(),
   //HomePage(),
   GalleryPage(),
    ContactPage()
   // Scaffold(),
   //  HomeScreen(),
    //Favorite(),

    //HomeScreen(),
    //CartScreen(),
    //Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttentIndex = 2;
          
          });
        },
        shape: const CircleBorder(),
        backgroundColor:cuttentIndex ==2 ?Colors.teal :Colors.grey.shade400,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 0;
                });
              },
              icon: Icon(
                Icons.sports_tennis,
                size: 30,
                color: cuttentIndex ==0 ?Colors.teal :Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 1;
                });
              },
              icon: Icon(
                Icons.book_online,
                size: 30,
                color:  cuttentIndex ==1 ?Colors.teal :Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 3;
                });
              },
              icon: Icon(
                Icons.photo_album,
                size: 30,
                color: cuttentIndex ==3 ?Colors.teal : Colors.grey.shade400,
              ),
            ),
            
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 3;
                });
              },
              icon: Icon(
                Icons.person,
                size: 30,
                color:cuttentIndex ==4 ?Colors.teal : Colors.grey.shade400,
              ),
              //color: Colors.blue,
            ),
           // const Text("profile")
          ],
        ),
      ),
      body: screens[cuttentIndex],
    );
  }
}
