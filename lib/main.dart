import 'package:alphahood/pages/account.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/confirm_id.dart';
import 'pages/otp_verifcation.dart';
import 'pages/verified.dart';
import 'pages/home.dart';
import 'pages/account.dart';
import 'pages/notice_board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff065DE9),
        primaryColorLight: Color(0xff81AEF4),
          fontFamily: 'Quicksand',
      ),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id:(context) => LoginPage(),
        ConfirmID.id:(context) => ConfirmID(),
        OtpVerf.id:(context) => OtpVerf(),
        Verified.id:(context) => Verified(),
        Home.id:(context) => Home(),
        AccountPage.id:(context) => AccountPage(),
        NotificationPage.id:(context) => NotificationPage(),

    },
    );
  }
}