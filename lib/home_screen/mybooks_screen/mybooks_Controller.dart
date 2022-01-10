import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:libraryproj/core/models/user_book.dart';
import 'package:libraryproj/core/session.dart';
import 'package:libraryproj/core/user_data.dart';
import 'package:libraryproj/firebase/data_repository.dart';

class MyBookController {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('user_cart');

  final CollectionReference userBooksCollection = FirebaseFirestore.instance.collection('user_books');
  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<void> fetchCartData() {
    print("checking cart data");
    String? uid = Session().currentUser?.uuid ?? null;
    if (uid != null) {
      return collection.doc(uid).get().then((value) {
        if (value.data() == null) return;
        Map<String, dynamic> lst = value.data() as Map<String, dynamic>;
        if (lst['book_ids'] != null) {
          List<int> items = List<int>.from(lst['book_ids']);
          print("lstBookIds: ${lst["book_ids"]}");
          UserData().setDataCart(items);
        }
      });
    }
    return Future.value(null);
  }
  Future<void> fetchBooksData(){
    print("fetching books");
    String? uid = Session().currentUser?.uuid ?? null;
    if(uid!=null){
      return userBooksCollection.doc(uid).get().then((value) {
        if(value.data()==null) return;
        Map<String,dynamic> lst = value.data() as Map<String,dynamic>;
        if(lst['books']!=null){
         List<UserBook> userBooks = [];
         for(var item in lst['books']){
           userBooks.add(
             UserBook.fromJson(item)
           );
         }
         UserData().setDataBooks(userBooks);
        }
      });
    }
    return Future.value(null);
  }

  Future<void> toggleCart(int bookId) {
    bool isCart = UserData().checkIfBookInCart(bookId);
    if (isCart) {
      return removeBookFromCart(bookId);
    } else {
      return addBookToCart(bookId);
    }
  }

  Future<void> addBookToCart(int bookId) async {
    //check if the book has enough quantity
    List<Map<String, dynamic>> books = await DataRepository().getBooks();
    bool found = false;
    for (var item in books) {
      int id = item['id'];
      if (id == bookId) {
        found = true;
        // if (item['quantity'] == null || item['quantity'] < 1) {
        //   throw ("no available quantity");
        // }
        break;
      }
    }
    if (!found) {
      throw ("book not found");
    }

    //add the book to the user cart
    String? uid = Session().currentUser?.uuid ?? null;
    if (uid != null) {
      List<int> data = UserData().booksInCart;
      data.add(bookId);
      Map<String, dynamic> dataInsert = {"book_ids": data};
      return collection.doc(uid).set(dataInsert).then((value) {
        UserData().setDataCart(data);
      });
    }
    return Future.value(null);
  }

  Future<void> removeBookFromCart(int bookId) async {
    String? uid = Session().currentUser?.uuid ?? null;
    if (uid != null) {
      List<int> data = UserData().booksInCart;
      data.remove(bookId);
      Map<String, dynamic> dataInsert = {"book_ids": data};
      return collection.doc(uid).set(dataInsert).then((value) {
        UserData().setDataCart(data);
      });
    }
    return Future.value(null);
  }

  Future<int> payUserCart() async{
    // add everything in the user cart to the
    String? uid = Session().currentUser?.uuid ?? null;
    List<Map<String,dynamic>> dataList = [];
    if(uid!=null){
      List<UserBook> data = UserData().userBooks;
      for(var item in UserBook.toJsonList(data)){
        dataList.add(item);
      }
      //get the books from the cart
      List<int> cartData = UserData().booksInCart;
      int price = 0;
      List<Map<String, dynamic>> books = await DataRepository().getBooks();


      for(int cartItem in cartData){
        UserBook book =UserBook(bookId: cartItem, borrowDate: DateTime.now());
        data.add(
          book
        );

        for (var item in books) {
          int id = item['id'];

          if (id == cartItem) {
            int bookPrice = item['itemPrice'];
            price  = price + bookPrice;
            break;
          }
        }

        dataList.add(book.toJson());
      }
      //send the data to firebase
      Map<String,dynamic> dataInsert = {
        "books":dataList
      };
      return userBooksCollection.doc(uid).set(dataInsert).then((value)async{
          UserData().setDataBooks(data);
          await removeAllBooksFromCart();
          return price;
      });
    }
    return Future.value(0);
  }


  Future<void> removeAllBooksFromCart() async {
    String? uid = Session().currentUser?.uuid ?? null;
    if (uid != null) {
      Map<String, dynamic> dataInsert = {"book_ids": []};
      return collection.doc(uid).set(dataInsert).then((value) {
        UserData().setDataCart([]);
      });
    }
    return Future.value(null);
  }
}
