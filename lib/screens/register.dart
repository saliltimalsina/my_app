import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/models/UserModel.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:my_app/repository/userRepository.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _countryController = TextEditingController();
  final _phoneController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  _displayMessage(msg) {
    if (msg) {
      MotionToast.success(description: const Text("success register"))
          .show(context);
    } else {
      MotionToast.warning(description: const Text('error rergister'))
          .show(context);
    }
  }

  _registerUser(User user) async {
    bool isLogin = await UserRepository().registerUser(user);
    if (isLogin) {
      _displayMessage(true);
    } else {
      _displayMessage(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icon.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 89,
                ),
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                TextFormField(
                  controller: _usernameController,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Color.fromARGB(211, 70, 69, 69),
                      filled: true,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                      labelText: "First Name",
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _addressController,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Color.fromARGB(211, 70, 69, 69),
                      filled: true,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                      labelText: "Last Name",
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _emailController,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Color.fromARGB(211, 70, 69, 69),
                      filled: true,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                      labelText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _passwordController,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30)),
                      fillColor: Color.fromARGB(211, 70, 69, 69),
                      filled: true,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        User user = User(
                          email: _emailController.text,
                          address: _addressController.text,
                          username: _usernameController.text,
                          password: _passwordController.text,
                        );
                        _registerUser(user);
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: "SFUIText",
                      ),
                    ),
                    color: Color.fromARGB(255, 27, 27, 66),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: "SFUIText",
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    "Back To Login",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: "SFUIText",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
