import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:libraryproj/core/models/user_info.dart';
import 'package:libraryproj/core/session.dart';
import 'package:libraryproj/home_screen/library_home_screen.dart';
import 'package:libraryproj/home_screen/mybooks_screen/mybooks_Controller.dart';
import 'package:libraryproj/home_screen/settings_screen/user_controller.dart';
import 'package:libraryproj/pageview/PageView.dart';
import 'home_screen/favorites/favorites_controller.dart';
import 'splash_screen/LibrarySplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = true;

  @override
  void initState() {
    Session().loadUser().then((value)async {
      FavoritesController controller = FavoritesController();
      await controller.fetchFavorites();
      MyBookController bookController = MyBookController();
      await bookController.fetchCartData();
      await bookController.fetchBooksData();
      UserController userController = UserController();
      await userController.fetchUserInfo();
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark),
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          elevation: 20.0,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: HexColor('333739'),
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: HexColor('333739'),
              statusBarIconBrightness: Brightness.light),
          backgroundColor: HexColor('333739'),
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          elevation: 20.0,
          backgroundColor: HexColor('333739'),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: isLoading
          ? Center(child: Container(child: CircularProgressIndicator()))
          : _InitialScreen(),
    );
  }
}

class _InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Session().isAuthenticated) {
      return LibraryHomeScreen();
    }
    return LibraryPageView();
  }
}
