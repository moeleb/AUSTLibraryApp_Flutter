import 'package:flutter/material.dart';
import 'package:libraryproj/home_screen/library_home_screen.dart';
import 'package:libraryproj/register_library/register_controller.dart';

class LibraryRegisterScreen extends StatefulWidget {
  @override
  _LibraryRegisterScreenState createState() => _LibraryRegisterScreenState();
}

class _LibraryRegisterScreenState extends State<LibraryRegisterScreen> {
  RegisterController _controller = RegisterController();
  bool isPassword = true;

  bool isConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/libbg.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          'Register',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {},
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
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        onFieldSubmitted: (String value) {},
                        onChanged: (String value) {
                          setState(() {
                            setState(() {
                              _controller.fullName = value;
                            });
                          });
                        },
                        decoration: InputDecoration(
                            labelText: 'Full Name',
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (String value) {},
                        onChanged: (String value) {
                          setState(() {
                            _controller.address = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Address',
                          prefixIcon: Icon(
                            Icons.home,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (String value) {},
                        onChanged: (String value) {
                          setState(() {
                            _controller.phone = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'phone',
                          prefixIcon: Icon(
                            Icons.phone,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (String value) {},
                        obscureText: isPassword,
                        onChanged: (String value) {
                          setState(() {
                            _controller.password = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'password',
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
                      ),
                    ),
                    SizedBox(
                      height: 8 ,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isConfirmPassword,
                        onFieldSubmitted: (String value) {},
                        onChanged: (String value) {
                          setState(() {
                            _controller.confirmPassword = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isConfirmPassword = !isConfirmPassword;
                              });
                            },
                            icon: Icon(
                              isConfirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: MaterialButton(
                        onPressed: () {
                          if (!_controller.canProceed) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('You have missing fields!'),
                            ));
                            return;
                          }
                          if (!_controller.passwordMatch) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("The 2 passwords don't match"),
                            ));
                            return;
                          }
                          setState(() {
                            _controller.buttonLoading = true;
                          });
                          _controller.registerUser().then((user) {
                            setState(() {
                              _controller.buttonLoading = false;
                            });
                            print("registering user done, going to next screen");
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LibraryHomeScreen(),
                              ),
                            );
                          }).catchError((error, trace) {
                            print("errorTrace: $trace");
                            setState(() {
                              _controller.buttonLoading = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Error in registration, $error"),
                            ));
                          });
                        },
                        child: _controller.buttonLoading
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
