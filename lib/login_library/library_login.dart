import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:libraryproj/home_screen/library_home_screen.dart';
import 'package:libraryproj/login_library/login_controller.dart';
import 'package:libraryproj/register_library/library_register_screen.dart';

class LibraryLoginScreen extends StatefulWidget {
  @override
  _LibraryLoginScreenState createState() => _LibraryLoginScreenState();
}

class _LibraryLoginScreenState extends State<LibraryLoginScreen> {
  LoginController _controller = LoginController();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/libbg.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 170,
                      ),
                      Center(
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          setState(() {
                            _controller.email = value;
                          });
                        },
                        onChanged: (String value) {
                          setState(() {
                            _controller.email = value;
                          });
                        },
                        decoration: InputDecoration(
                            labelText: 'Email Address',
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (String value) {
                          setState(() {
                            _controller.password = value;
                          });
                        },
                        onChanged: (String value) {
                          setState(() {
                            _controller.password = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                            icon: Icon(
                              isPassword ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        obscureText: isPassword,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.blue,
                        child: MaterialButton(
                          onPressed: () {
                            if (!_controller.proceedLogin) {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('You have missing fields!'),
                              ));
                              return;
                            }
                            _controller
                                .loginUser(
                                    email: _controller.email,
                                    password: _controller.password)
                                .then((value) {
                              Phoenix.rebirth(context);
                            }).catchError((error, trace) {
                              print("errorTrace: $trace");
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Failed Login: $error'),
                              ));
                            });
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LibraryRegisterScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Register Now',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
