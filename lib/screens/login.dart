import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/icon.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formkey,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 91),
                      child: ClipPath(
                        clipper: ClipPath1(),
                        child: Container(
                          height: 276,
                          width: 176,
                          color: const Color.fromARGB(0, 27, 192, 198),
                        ),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 83,
                    ),
                    Center(
                      child: SizedBox(
                        height: 276,
                        width: 196,
                        child: Image.asset(
                          "assets/images/book.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Welcome to acumen",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "Please login to continue.",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.59,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                    TextFormField(
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        color: const Color(0xffe0e0e0),
                      ),
                      decoration: InputDecoration(
                          hintText: "slothic@gmail.com",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 13.59,
                            color: const Color(0xffe0e0e0),
                          ),
                          prefixIcon: const Icon(
                            Icons.account_circle,
                            color: Color(0xffe0e0e0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      style: GoogleFonts.montserrat(
                        fontSize: 13.59,
                        color: const Color(0xffe0e0e0),
                      ),
                      decoration: InputDecoration(
                          hintText: "• • • • • • • • •",
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 13.59,
                            color: const Color(0xffe0e0e0),
                          ),
                          prefixIcon: const Icon(
                            Icons.account_circle,
                            color: Color(0xffe0e0e0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xff1ab4f3),
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color(0xff1ab4f3),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/homepage");
                        },
                        child: Text(
                          "SIGN IN",
                          style: GoogleFonts.montserrat(
                              fontSize: 11.78,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: const Color(0xff1bbfc6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: RichText(
                            text: TextSpan(
                                text: "Don't have an account? ",
                                style: GoogleFonts.montserrat(
                                    fontSize: 11.78,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                                children: [
                              TextSpan(
                                  text: "Create one.",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 11.78,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white))
                            ])),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var oneThirdHeight = size.height / 3;

    final path = Path()
      ..lineTo(0, oneThirdHeight)
      ..lineTo(0, oneThirdHeight * 2)
      ..quadraticBezierTo(0, (oneThirdHeight * 2) + 37, 20, size.width + 57)
      ..lineTo(size.width / 2, size.height)
      ..quadraticBezierTo(size.width + 30, (oneThirdHeight * 2) + 37,
          size.width - 10, oneThirdHeight * 2)
      ..lineTo(size.width, (oneThirdHeight * 2) + 25)
      ..lineTo(size.width, oneThirdHeight - 20)
      ..quadraticBezierTo(size.width, oneThirdHeight - 35, size.height / 2 + 20,
          size.width / 2 - 40)
      ..lineTo(size.width / 2, 0)
      ..quadraticBezierTo(0, oneThirdHeight - 40, 0, oneThirdHeight - 30)
      ..lineTo(0, oneThirdHeight)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
