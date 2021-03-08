import 'dart:async';
import 'dart:ui';
import 'home.dart';

import 'package:flutter/material.dart';
import 'package:alphahood/components/elevatedCard.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verified extends StatefulWidget {
  static String id = 'Verified_screen';
  @override
  _VerifiedState createState() => _VerifiedState();
}


class _VerifiedState extends State<Verified> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushNamedAndRemoveUntil(context, Home.id, (e) => false);
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'deep',
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor,
                  width: 15),
                  shape: BoxShape.circle,
                  //color: Theme.of(context).primaryColor
                ),
                child: Center(
                  child: Icon(Icons.check,
                      size: 100,
                      color: Theme.of(context).primaryColor,
                  ),

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Successfully verified!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
