import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_ui/views/home.dart';
import 'package:spotify_ui/views/library.dart';
import 'package:spotify_ui/views/profile.dart';
import 'package:spotify_ui/views/search.dart';

class Viewbar extends StatefulWidget {
  const Viewbar({Key? key}) : super(key: key);

  @override
  State<Viewbar> createState() => _ViewbarState();
}

class _ViewbarState extends State<Viewbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              this._selectedTab = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: "Your Library",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            )
          ]),
      body: Stack(
        children: [
          renderView(
            0,
            HomeView(),
          ),
          renderView(
            1,
            SearchView(),
          ),
          renderView(
            2,
            LibraryView(),
          ),
          renderView(
            3,
            ProfileView(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabindex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabindex,
      child: Opacity(
        opacity: _selectedTab == tabindex ? 1 : 0,
        child: view,
      ),
    );
  }
}
