import 'dart:ui';

import 'package:alphahood/components/HomeworkCard.dart';
import 'package:flutter/material.dart';
import 'package:alphahood/components/elevatedCard.dart';
import 'verified.dart';
import 'package:intl/intl.dart';
import 'package:alphahood/components/StudentAvatar.dart';
import 'package:alphahood/components/notificationCard.dart';
import 'package:alphahood/components/UpdatesCard.dart';
import 'account.dart';
import 'package:alphahood/data/data.dart';
import 'notice_board.dart';

class Home extends StatefulWidget {
  static String id = 'Home_screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool firstvalue = true;
  bool secondvalue = false;
  bool thirdvalue = false;
  bool fourthvalue = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final now = new DateTime.now();
    String month = DateFormat('MMMM').format(now);
    String date = DateFormat('d').format(now);
    String weekday = DateFormat('EEEE').format(now);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Hero(
                        tag: 'deep',
                        child: Container(
                          height: height*0.0689,
                          width: height*0.0689,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]),
                            shape: BoxShape.circle,
                            //color: Theme.of(context).primaryColor
                          ),
                          child: Icon(
                            Icons.date_range_rounded,
                            size: height*0.0246,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$weekday ',
                                style: TextStyle(
                                  fontSize: height*0.01924,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                '$date $month',
                                style: TextStyle(
                                  fontSize: height*0.0305,
                                  fontWeight: FontWeight.w700,
                                  //fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StudentAvatar(
                        size: height*0.0689,
                        image: currentUser.studentImage,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height*0.0566),
                    child: NotificationCard(data: NoticeBoardCardData(title: 'Holi Holiday', typeText: 'Holiday', description: "Activate every muscle group to get the results you've always wanted", date: "15 March 2021")
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height*0.0272, bottom: height*0.0197),
                    child: Text(
                      'Live Updates',
                      style: TextStyle(color: Colors.grey, fontSize: height*0.0202),
                    ),
                  ),
                  Container(
                    height: height*0.134,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: updateCardDataList.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return UpdatesCard(data: updateCardDataList[index]);
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height*0.0272, bottom: height*0.0197),
                    child: Text(
                      'Homework',
                      style: TextStyle(color: Colors.grey, fontSize: height*0.0202),
                    ),
                  ),
                  Container(
                    height: height*0.350,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      children: [
                        HomeworkCard(
                          onTap: () {
                            setState(() {
                              firstvalue = !firstvalue;
                            });
                          },
                          value: firstvalue,
                          topic: 'Learn Chapter 5 with one Essay',
                          subjectAndDay: 'English / Today',
                        ),
                        HomeworkCard(
                          onTap: () {
                            setState(() {
                              secondvalue = !secondvalue;
                            });
                          },
                          value: secondvalue,
                          topic: 'Excercise Trigonometry 1st topic',
                          subjectAndDay: 'Maths / Today',
                        ),
                        HomeworkCard(
                          onTap: () {
                            setState(() {
                              thirdvalue = !thirdvalue;
                            });
                          },
                          value: thirdvalue,
                          topic: 'Hindi writing 3 pages',
                          subjectAndDay: 'Hindi / Yesterday',
                        ),
                        HomeworkCard(
                          onTap: () {
                            setState(() {
                              fourthvalue = !fourthvalue;
                            });
                          },
                          value: fourthvalue,
                          topic: 'Learn Chapter 5 with one Essay',
                          subjectAndDay: 'Social Science / Yesterday',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(height*0.019),
                height: height*0.073,
                width: height*0.385,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(height*0.073/2),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff599E9E9E),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.black, fontSize: height*0.0172, fontWeight: FontWeight.w700),
                        ),
                        Container(
                          height: 4,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xFF08ACF5),
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.search,
                      size: height*0.0326,
                    ),
                    GestureDetector(
                      onTap: (){

    Navigator.pushNamed(context, NotificationPage.id);
                      },
                      child: Icon(
                        Icons.notifications_none_rounded,
                        size: height*0.0326,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AccountPage.id);
                        },
                        child: Icon(
                          Icons.person_outline_outlined,
                          size: height*0.0326,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
