import 'package:alphahood/pages/otp_verifcation.dart';
import 'package:flutter/material.dart';
import 'package:alphahood/data/data.dart';
import 'package:alphahood/components/elevatedCard.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';
import 'package:alphahood/components/StudentAvatar.dart';



class ConfirmID extends StatefulWidget {
  static String id = 'confirmID_screen';
  @override
  _ConfirmIDState createState() => _ConfirmIDState();
}

class _ConfirmIDState extends State<ConfirmID> {
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
                //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: height*0.0554,
                width: height*0.0554,
              ),
              ),
            ),
            SizedBox(
              height: height*0.0334,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose your account',
                    style: TextStyle(
                      fontSize: height*0.027,
                      fontWeight: FontWeight.w700,
                      //fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'confirm your id',
                    style: TextStyle(
                      fontSize: height*0.02955,
                      fontWeight: FontWeight.w400,
                      //fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(

                    child: Padding(
                      padding: EdgeInsets.only(top: height*0.0701),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StudentAvatar(image: currentUser.studentImage, size: height*0.062,),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: height*0.0173),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [

                                      Padding(
                                        padding: EdgeInsets.only(bottom: height*0.005),
                                        child: Text(
                                          currentUser.name,
                                          style: TextStyle(
                                            fontSize: height*0.02216,
                                            fontWeight: FontWeight.w600,
                                            //fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      elevatedCard(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(height*0.03, height*0.005, height*0.03, height*0.005),
                                          child: Text(
                                            currentUser.studentClass,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height*0.014,
                                              fontWeight: FontWeight.w400,
                                              //fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],

                                  ),
                                ),
                              ),
                              Container(
                                height: height*0.0759,
                                width: height*0.0759,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[300]),
                                  shape: BoxShape.circle,
                                  //color: Theme.of(context).primaryColor
                                ),
                                child: Icon(Icons.keyboard_arrow_down_rounded, size: height*0.0489,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  Center(
                    child: Text(
                      'By continuing, you agree to the #school_app_project',
                      style: TextStyle(
                        fontSize: height*0.01477,
                        fontWeight: FontWeight.w400,
                        //fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terms & Service',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: height*0.01477,
                          fontWeight: FontWeight.w400,
                          //fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ' & ',
                        style: TextStyle(
                          fontSize: 14,

                          fontWeight: FontWeight.w400,
                          //fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Privacy Policy.',
                        style: TextStyle(
                          fontSize: height*0.01477,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          //fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height*0.0369,
            ),

            Hero(
              tag: 'bottomButtons',
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: elevatedCard(
                      child: Padding(
                        padding: EdgeInsets.all(height*0.02586),
                        child: Icon(Icons.arrow_back_rounded, color: Colors.white,size: height*0.0233),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, OtpVerf.id);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: elevatedCard(

                          //padding: const EdgeInsets.all(18.0),
                          child: Padding(
                            padding: EdgeInsets.all(height*0.02586),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Agree & Continue',
                                  style: TextStyle(color: Colors.white, fontSize: height*0.0197, fontWeight: FontWeight.w700),),
                                SizedBox(
                                  width: 10,
                                ),

                                Icon(Icons.arrow_forward_rounded, color: Colors.white,size: height*0.0223,),
                              ],

                            ),
                          ),
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

