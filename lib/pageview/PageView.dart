import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraryproj/login_library/library_login.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LibraryModel {
  final String? lottie;
  final String? title;
  final String? body;

  LibraryModel({
    @required this.lottie,
    @required this.title,
    @required this.body,
  });
}

class LibraryPageView extends StatefulWidget {
  @override
  _LibraryPageViewState createState() => _LibraryPageViewState();
}

class _LibraryPageViewState extends State<LibraryPageView> {
  var libraryController = PageController();

  bool isLast = false;

  List<LibraryModel> libraryBoarding = [
    LibraryModel(
      lottie: "assets/json/books1.json",
      title: "Read your favorite books",
      body: "All of your favorite books are already here",
    ),
    LibraryModel(
      lottie: "assets/json/books2.json",
      title: "Enjoy Reading Offline",
      body: "Once you burrow a book, you can access and read it anytime and anywhere",
    ),
    LibraryModel(
      lottie: "assets/json/books3.json",
      title: "Create A Personal Library",
      body: "All the books that you burrow will be available for user usage for a certain time and can be accessed from any device",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LibraryLoginScreen(),
                ),
              );
            },
            child: Text(
              'SKIP',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (int index) {
                if (index == libraryBoarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  isLast = false;
                }
              },
              physics: BouncingScrollPhysics(),
              controller: libraryController,
              itemBuilder: (context, index) =>
                  buildBoardingItem(libraryBoarding[index]),
              itemCount: libraryBoarding.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                SmoothPageIndicator(
                  controller: libraryController,
                  count: libraryBoarding.length,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5,
                  ),
                ),
                Spacer(),
                FloatingActionButton(
                  mini: true,
                  onPressed: () {
                    if (isLast) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LibraryLoginScreen(),
                        ),
                      );
                    } else {
                      libraryController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBoardingItem(LibraryModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Lottie.asset(model.lottie!),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title!,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  model.body!,
                  style: TextStyle(
                    fontSize: 17,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      );
}
