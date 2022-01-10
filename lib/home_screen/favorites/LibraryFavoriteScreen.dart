import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:libraryproj/constants/components.dart';
import 'package:libraryproj/core/user_data.dart';
import 'package:libraryproj/firebase/data_repository.dart';
import 'package:libraryproj/home_screen/book_details/book_details_screen.dart';
import 'package:libraryproj/home_screen/mybooks_screen/mybooks_Controller.dart';
import 'dart:ui';
import 'favorites_controller.dart';

class LibraryFavoriteScreen extends StatefulWidget {
  const LibraryFavoriteScreen({Key? key}) : super(key: key);

  @override
  State<LibraryFavoriteScreen> createState() => _LibraryFavoriteScreenState();
}

class _LibraryFavoriteScreenState extends State<LibraryFavoriteScreen> {
  FavoritesController _favController = FavoritesController();
  MyBookController _myBookController = MyBookController();

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
              stream: UserData().favoritesStream,
              builder: (context, snapshot) {
                List favorites = [];
                for (var x in lst) {
                  Map<String, dynamic> item = x.data() as Map<String, dynamic>;
                  if (UserData().checkIfBookIsFavorite(item['id'])) {
                    favorites.add(item);
                  }
                }

                if (favorites.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_outline_outlined,
                          size: 72,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "No book in favorites",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Add Books",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item = favorites[index];
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
                    itemCount: favorites.length);
              });
        });
  }
}
