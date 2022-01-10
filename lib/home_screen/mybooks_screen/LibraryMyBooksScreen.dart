import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:libraryproj/constants/components.dart';
import 'package:libraryproj/core/user_data.dart';
import 'package:libraryproj/firebase/data_repository.dart';
import 'package:libraryproj/home_screen/book_details/book_details_screen.dart';
import 'package:libraryproj/home_screen/favorites/favorites_controller.dart';

import 'mybooks_Controller.dart';

class LibraryMyBooksScreen extends StatefulWidget {
  const LibraryMyBooksScreen({Key? key}) : super(key: key);

  @override
  State<LibraryMyBooksScreen> createState() => _LibraryMyBooksScreenState();
}

class _LibraryMyBooksScreenState extends State<LibraryMyBooksScreen> {
  MyBookController _myBookController = MyBookController();
  FavoritesController _favController = FavoritesController();

  @override
  Widget build(BuildContext context) {
    final DataRepository repository = DataRepository();
    return StreamBuilder<QuerySnapshot>(
        stream: repository.getStream(),
        builder: (context, snapshot) {
          print("Stream is built");
          if (!snapshot.hasData) return LinearProgressIndicator();
          List lst = snapshot.data?.docs ?? [];

          return StreamBuilder<dynamic>(
              stream: UserData().userBooksStream,
              builder: (context, snapshot) {
                List userBooks = [];
                for (var x in lst) {
                  Map<String, dynamic> item = x.data() as Map<String, dynamic>;
                  if (UserData().checkIfBookIsAlreadyBorrowed(item['id'])) {
                    userBooks.add(item);
                  }
                }

                if (userBooks.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book,
                          size: 72,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "No book in My Books",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Burrow some Books!",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item = userBooks[index];
                      return buildBookItem(item, context, onItemFavorited: () {
                        _favController.toggleFavorite(item['id']);
                      }, onAddToCart: () {
                        _myBookController.toggleCart(item['id']);
                      }, onItemSelected: (item) {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return BookDetailsScreen(bookItem: item);
                        }));
                      });
                    },
                    separatorBuilder: (context, index) => myDivider(),
                    itemCount: userBooks.length);
              });
        });
  }
}
