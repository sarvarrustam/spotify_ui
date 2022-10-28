import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_ui/views/home.dart';

class SplashPage extends StatefulWidget {
  static const id = "/splash page";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Size? _size;

  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;

    Timer(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, HomeView.id, (route) => false);
    });
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          height: 200,
        ),
      ),
    );
  }
}
