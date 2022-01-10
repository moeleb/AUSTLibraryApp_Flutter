import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:libraryproj/pageview/PageView.dart';

class LibrarySplashScreen extends StatelessWidget {
  const LibrarySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        backgroundColor: Colors.blueAccent,
        logo: Image.asset(
          "assets/images/owl.jpg",
        ),
        logoSize: 300,
          title: Text(
            'LIBRARYON',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        showLoader: true,
        loadingText: Text("Loading"),
        navigator: LibraryPageView() ,
        durationInSeconds: 5,
      ),
    );
  }
}
