import 'package:alphahood/components/GeneralSettingsListCard.dart';
import 'package:flutter/material.dart';
import 'package:alphahood/components/StudentAvatar.dart';
import 'package:alphahood/data/data.dart';
import 'package:alphahood/components/notificationCard.dart';
import 'package:alphahood/components/elevatedCard.dart';

class NotificationPage extends StatefulWidget{
  static String id = 'Notification_screen';
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>{
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(height*0.024),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Hero(
                      tag: 'deep',
                      child: Container(
                        height: height*0.070,
                        width: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          shape: BoxShape.circle,
                          //color: Theme.of(context).primaryColor
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: height*0.025,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: height*0.065),
                      child: Center(
                        child: Text(
                          'Notice Board',
                          style: TextStyle(
                              fontSize: height*0.022,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height*0.054,),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: generalSettingsList.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return Column(
                          children: [
                            NotificationCard(data: noticeBoardList[index],),
                            SizedBox(height: height*0.0406,)
                          ],
                        );
                      }),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }

}

