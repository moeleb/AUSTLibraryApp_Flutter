class UserBook {
  final int bookId;
  final DateTime borrowDate;

  UserBook({required this.bookId, required this.borrowDate});

  static List<dynamic> toJsonList(List<UserBook> list) {
    List items = [];
    for (UserBook item in list) {
      items.add({
        "book_id": item.bookId,
        "borrow_date": item.borrowDate.millisecondsSinceEpoch
      });
    }
    return items;
  }

  factory UserBook.fromJson(Map<String,dynamic> json){
    return UserBook(
        bookId: json[
          'book_id'
        ],
        borrowDate: DateTime.fromMillisecondsSinceEpoch(json['borrow_date']));
  }

  Map<String, dynamic> toJson() {
    return {
      "book_id": bookId,
      "borrow_date": borrowDate.millisecondsSinceEpoch
    };
  }
}
