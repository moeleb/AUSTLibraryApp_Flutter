import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:libraryproj/core/session.dart';
import 'package:libraryproj/core/user_data.dart';

class FavoritesController {
  // 1
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('favorites');

  // 2
  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

// // 3

  Future<void> fetchFavorites() {
    print("checking favorites");
    String? uid = Session().currentUser?.uuid ?? null;
    print("uuid: $uid");
    if (uid != null) {
      return collection.doc(uid).get().then((value) {
        if(value.data()!=null){
          Map<String, dynamic> lst = value.data() as Map<String, dynamic>;
          if (lst['book_ids'] != null) {
            List<int> items = List<int>.from(lst['book_ids']);
            print("lstBookIds: ${lst['book_ids']}");
            UserData().setDataFavorites(items);
          }
          print("favorites: $lst");
        }

        return;
      });
    }
    return Future.value(null);
  }

  Future<void> toggleFavorite(int bookId){
    bool isFav = UserData().checkIfBookIsFavorite(bookId);
    if(isFav){
      return removeFavorite(bookId);
    }else{
      return addFavorite(bookId);
    }
  }


  Future<void> addFavorite(int bookId){
    String? uid = Session().currentUser?.uuid ?? null;
    if(uid!=null){
      List<int> data = UserData().booksFavorite;
      data.add(bookId);
      Map<String,dynamic> dataInsert = {
        "book_ids": data
      };
      return collection.doc(uid).set(dataInsert).then((out){
        UserData().setDataFavorites(data);
      });
    }
    return Future.value(null);
  }


  Future<void> removeFavorite(int bookId) {
    String? uid = Session().currentUser?.uuid ?? null;
    if(uid!=null){
      List<int> data = UserData().booksFavorite;
      data.remove(bookId);

      Map<String,dynamic> dataInsert = {
        "book_ids": data
      };
      return collection.doc(uid).set(dataInsert).then((value) {
        UserData().setDataFavorites(data);
      });
    }
    return Future.value(null);
  }

}
