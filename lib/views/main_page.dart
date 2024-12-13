import 'package:estate_app/constants/color.dart';
import 'package:estate_app/views/home/home_page.dart';
import 'package:estate_app/views/message/message_page.dart';
import 'package:estate_app/views/profile/profile_page.dart';
import 'package:estate_app/views/search/search_page.dart';
import 'package:estate_app/widgets/navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedItemIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    const SearchPage(),
    const MessagePage(),
    const ProfilePage()
  ];

  void onItemSelected(int index) {
    setState(() {
      selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItemIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItemIndex,
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: onItemSelected,
          items: [
            BtmNvItem("Home", Icons.home),
            BtmNvItem("Search", Icons.search),
            BtmNvItem("Message", Icons.message),
            BtmNvItem("Profile", Icons.person),
          ]),
    );
  }
}
