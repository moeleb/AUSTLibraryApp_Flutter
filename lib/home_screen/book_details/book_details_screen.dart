import 'package:flutter/material.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({Key? key, required this.bookItem}) : super(key: key);
  final Map<String, dynamic> bookItem;

  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bookItem['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                child: Padding(
              padding: EdgeInsets.all(20),
              child: Hero(
                tag: "image${widget.bookItem['id']}",
                child: Image.network(
                  widget.bookItem["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.only(top: 4,left: 20,right: 20,bottom: 20),
              child: Text(widget.bookItem['description'],style: TextStyle(height: 1.4),textAlign: TextAlign.justify,),
            )
          ],
        ),
      ),
    );
  }
}
