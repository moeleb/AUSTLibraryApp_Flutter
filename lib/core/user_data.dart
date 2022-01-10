import 'dart:async';
import 'package:libraryproj/core/models/user_book.dart';
import 'package:libraryproj/core/models/user_info.dart';

class UserData {
  List<int> _bookFavorites = [];
  List<int> _booksCart = [];
  List<UserBook> _userBooks = [];
  UserInfo? userInfo;

  StreamController _favoritesStreamController =
      StreamController<List<int>>.broadcast();

  StreamController _cartStreamController =
      StreamController<List<int>>.broadcast();

  StreamController _userBooksStreamController =
      StreamController<List<UserBook>>.broadcast();

  static final UserData _singleton = UserData._internal();

  factory UserData() {
    return _singleton;
  }

  void clean() {
    _bookFavorites = [];
    _booksCart = [];
    _userBooks = [];
    userInfo = null;
  }

  UserData._internal();

  bool checkIfBookIsFavorite(int bookId) {
    for (int item in _bookFavorites) {
      if (item == bookId) return true;
    }
    return false;
  }

  bool checkIfBookInCart(int bookId) {
    for (int item in _booksCart) {
      if (item == bookId) return true;
    }
    return false;
  }

  bool checkIfBookIsAlreadyBorrowed(int bookId) {
    for (UserBook item in _userBooks) {
      if (item.bookId == bookId) return true;
    }
    return false;
  }

  int getNumDaysOfBorrowedBooks(int bookId) {
    for (UserBook item in _userBooks) {
      if (item.bookId == bookId) {
        DateTime endDate = item.borrowDate.add(Duration(days: 30));
        DateTime startDate = DateTime.now();
        Duration difference = endDate.difference(startDate);
        print("Difference is $difference");
        return difference.inDays;
      }
    }
    return 0;
  }

  List<int> get booksFavorite {
    return _bookFavorites;
  }

  List<int> get booksInCart {
    return _booksCart;
  }

  List<UserBook> get userBooks {
    return _userBooks;
  }

  Stream get favoritesStream {
    return _favoritesStreamController.stream;
  }

  Stream get cartStream {
    return _cartStreamController.stream;
  }

  Stream get userBooksStream {
    return _userBooksStreamController.stream;
  }

  void setDataFavorites(List<int> lst) {
    this._bookFavorites = lst;
    _favoritesStreamController.add(lst);
  }

  void setDataCart(List<int> lst) {
    this._booksCart = lst;
    _cartStreamController.add(lst);
  }

  void setDataBooks(List<UserBook> lst) {
    this._userBooks = lst;
    _userBooksStreamController.add(lst);
  }

  Future<void> addBookToFavorites() {
    return Future.value(null);
  }

  Future<void> removeBookFromFavorites() {
    return Future.value(null);
  }

  void dispose() {
    _favoritesStreamController.close();
    _cartStreamController.close();
    _userBooksStreamController.close();
  }
}
