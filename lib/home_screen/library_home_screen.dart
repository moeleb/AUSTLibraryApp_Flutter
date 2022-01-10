import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:libraryproj/core/user_data.dart';
import 'package:libraryproj/home_screen/mybooks_screen/LibraryMyBooksScreen.dart';
import 'package:libraryproj/home_screen/settings_screen/LibrarySettingsScreen.dart';
import 'package:libraryproj/payment/payment.dart';
import 'favorites/LibraryFavoriteScreen.dart';
import 'library_categories/LibraryCategoryScreen.dart';

class LibraryHomeScreen extends StatefulWidget {
  const LibraryHomeScreen({Key? key}) : super(key: key);

  @override
  _LibraryHomeScreenState createState() => _LibraryHomeScreenState();
}

class _LibraryHomeScreenState extends State<LibraryHomeScreen> {
  var currentIndex = 0;
  List<String> screenTitle = [
    "Browse Books",
    "Favorites",
    "MyBooks",
    "Settings",
  ];
  List<Widget> screens = [
    LibraryCategoryScreen(),
    LibraryFavoriteScreen(),
    LibraryMyBooksScreen(),
    LibrarySettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          screenTitle[currentIndex],
        ),
        actions: [
          StreamBuilder<dynamic>(
            stream: UserData().cartStream,
            builder: (context, snapshot) {
              return IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (MySample()),
                    ),
                  );
                },
                //icon: Icon(Icons.add_shopping_cart),
                icon: UserData().booksInCart.length > 0
                    ? Badge(
                        badgeContent:
                            Text(UserData().booksInCart.length.toString()),
                        child: Icon(Icons.add_shopping_cart),
                      )
                    : Icon(Icons.add_shopping_cart),
              );
            }
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
          print(currentIndex);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.grey,
            ),
            label: "Books ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.my_library_books_sharp,
              color: Colors.grey,
            ),
            label: "MyBooks",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            label: "settings",
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
