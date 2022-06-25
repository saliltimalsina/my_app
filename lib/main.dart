import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:my_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/register.dart';
import 'package:my_app/screens/dashboard.dart';
import 'package:my_app/screens/homepage.dart';
import 'package:my_app/screens/wearlogin.dart';

void main() {
  AwesomeNotifications().initialize('resource://drawable/launcher', [
    NotificationChannel(
      channelGroupKey: 'basic',
      channelKey: 'basic',
      channelName: 'Basic',
      channelDescription: 'Basic notification',
      defaultColor: const Color(0xFF00FF00),
      importance: NotificationImportance.Max,
      ledColor: Colors.white,
      channelShowBadge: true,
    )
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterScreen(),
        "/dashboard": (context) => const NavigationDrawer(),
        "/homepage": (context) => const DashPage(),
        "/wearlogin": (context) => const Wearos(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
