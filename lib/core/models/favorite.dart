class Favorite {
  final int? bookId;

  Favorite({this.bookId});

  factory Favorite.fromJson(Map<String, dynamic> json) {
    return Favorite(bookId: json['id']);
  }
}
