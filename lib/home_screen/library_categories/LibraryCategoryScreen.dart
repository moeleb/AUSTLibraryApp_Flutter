import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:libraryproj/constants/components.dart';
import 'package:libraryproj/firebase/data_repository.dart';
import 'package:libraryproj/home_screen/book_details/book_details_screen.dart';
import 'package:libraryproj/home_screen/favorites/favorites_controller.dart';
import 'package:libraryproj/home_screen/mybooks_screen/mybooks_Controller.dart';

class LibraryCategoryScreen extends StatefulWidget {
  const LibraryCategoryScreen({Key? key}) : super(key: key);

  @override
  _LibraryCategoryScreenState createState() => _LibraryCategoryScreenState();
}

class _LibraryCategoryScreenState extends State<LibraryCategoryScreen> {
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
          if (lst.isEmpty) {
            return Center(
              child: Text("No data is available"),
            );
          }

          return ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                Map<String, dynamic> item =
                    lst[index].data() as Map<String, dynamic>;
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
              itemCount: lst.length);
        });
  }
}
