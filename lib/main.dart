import 'package:flutter/material.dart';
import 'package:spotify_ui/splash_page.dart';
import 'package:spotify_ui/views/album_view.dart';
import 'package:spotify_ui/views/home.dart';
import 'package:spotify_ui/navigations/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          selectedItemColor: Colors.lightGreenAccent,
          unselectedItemColor: Colors.white38,
        ),
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
        AlbumView.id: (context) => const AlbumView(
              image: AssetImage("salom"),
              lable: "flutter",
            ),
        SplashPage.id: (context) => const SplashPage(),
      },
      initialRoute: HomeView.id,
    );
  }
}
