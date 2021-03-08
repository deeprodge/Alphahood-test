import 'dart:async';

import 'package:alphahood/data/data.dart';
import 'package:flutter/material.dart';
import 'package:alphahood/components/elevatedCard.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'verified.dart';


class OtpVerf extends StatefulWidget {
  static String id = 'OtpVerf_screen';
  @override
  _OtpVerfState createState() => _OtpVerfState();
}

class _OtpVerfState extends State<OtpVerf> {
  final formKey = GlobalKey<FormState>();
  bool hasError = false;
  String currentText = "";
  Timer _timer;
  int _counter;

  void startTimer(int seconds){
    _counter = seconds;
  _timer = Timer.periodic(Duration(seconds: 1), (timer) {
    setState(() {
      if(_counter>0){
        _counter--;
      }else {
        _timer.cancel();
      }
    });
  });
  }

  Text getTimer(){
    if(_counter>0){
      return Text(
          "00:$_counter",
        style: TextStyle(
          fontSize: currentDisplaySize.height*0.0204,
          fontWeight: FontWeight.w400,
          //fontWeight: FontWeight.bold),
        ),
      );
    }else{
      return Text(
        "00:00. Click here to Resend",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: currentDisplaySize.height*0.0204,
          fontWeight: FontWeight.w400,
          //fontWeight: FontWeight.bold),
        ),
      );
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer(30);
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(height* 0.0394, height* 0.171, 30, 70),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "deep",
              child: elevatedCard(child: Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: height*0.0554,
                width: height*0.0554,
              ),
              ),
            ),
            SizedBox(
              height: height*0.034,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Verify your number',
                    style: TextStyle(
                      fontSize: height*0.027,
                      fontWeight: FontWeight.w700,
                      //fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'enter the OTP sent to ${currentUser.phoneNumber}',
                    style: TextStyle(
                      fontSize: height*0.022,
                      fontWeight: FontWeight.w400,
                      //fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Form(
                          key: formKey,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 30),
                              child: PinCodeTextField(
                                backgroundColor: Colors.transparent,
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: height*0.04286,
                                    fontWeight: FontWeight.w700
                                ),
                                appContext: context,

                                length: 4,
                                obscureText: true,
                                obscuringWidget: Text(
                                  '*',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height*0.0786,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                blinkWhenObscuring: true,
                                animationType: AnimationType.fade,
                                validator: (v) {
                                  if (v.length < 3) {
                                    return "";
                                  } else {
                                    return null;
                                  }
                                },
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(15),
                                  fieldHeight: height*0.0714,
                                  fieldWidth: height*0.0714,
                                  selectedFillColor: Theme.of(context).primaryColorLight,
                                  selectedColor: Theme.of(context).primaryColorLight,
                                  activeFillColor:
                                hasError ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColor,
                                  activeColor:
                                  hasError ? Theme.of(context).primaryColorLight : Theme.of(context).primaryColor,
                                  inactiveFillColor: Theme.of(context).primaryColorLight,
                                  inactiveColor: Theme.of(context).primaryColorLight,
                                ),
                                cursorColor: Colors.white,
                                animationDuration: Duration(milliseconds: 300),
                                enableActiveFill: true,
                                //errorAnimationController: errorController,
                                //controller: textEditingController,
                                keyboardType: TextInputType.number,

                                onCompleted: (v) {
                                  print("Completed");
                                  print(v);
                                  if(v == '0000'){
                                    Navigator.pushNamedAndRemoveUntil(context, Verified.id, (e)=>false );
                                    _timer.cancel();
                                  }
                                },
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: (value) {
                                  //print(value);
                                  setState(() {
                                    currentText = value;
                                  });
                                },
                                beforeTextPaste: (text) {
                                  print("Allowing to paste $text");
                                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                  return true;
                                },
                              )),
                        ),
                      ],
                    ),
                  ),

                  Center(
                    child: GestureDetector(
                          onTap:() {if(_counter==0){
                            startTimer(30);}
                          },
                      child: Text(
                        'Having trouble? Request a new OTP in ${getTimer().data}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: height*0.0204,
                          fontWeight: FontWeight.w400,
                          //fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
    
  }