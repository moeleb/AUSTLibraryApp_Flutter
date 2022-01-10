import 'package:flutter/material.dart';
import 'package:libraryproj/core/session.dart';
import 'package:libraryproj/core/user_data.dart';

class LibrarySettingsScreen extends StatelessWidget {
  const LibrarySettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/libbg.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
              ),
              initialValue: Session().currentUser?.displayName ?? "",
              enabled: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
              ),
              initialValue: UserData().userInfo?.address ?? "",
              enabled: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
              ),
              initialValue: UserData().userInfo?.phoneNumber ?? "",
              enabled: false,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: OutlinedButton(
                    onPressed: () {
                      Session().logout(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  Session().logout(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
