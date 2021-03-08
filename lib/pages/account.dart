import 'package:alphahood/components/GeneralSettingsListCard.dart';
import 'package:flutter/material.dart';
import 'package:alphahood/components/StudentAvatar.dart';
import 'package:alphahood/data/data.dart';
import 'package:alphahood/components/elevatedCard.dart';

class AccountPage extends StatefulWidget{
  static String id = 'Account_screen';
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>{
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(height*0.024),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              'My Account',
                              style: TextStyle(
                                fontSize: height*0.025,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height*0.048,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: StudentAvatar(image: currentUser.studentImage,size: height*0.056,),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  currentUser.name,
                                  style: TextStyle(
                                    fontSize: height*0.0246,
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
                                      fontSize: height*0.015,
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
                        height: height*0.07,
                        width: height*0.07,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]),
                          shape: BoxShape.circle,
                          //color: Theme.of(context).primaryColor
                        ),
                        child: Icon(Icons.keyboard_arrow_down_rounded, size: height*0.05,),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height*0.082, bottom: height*0.0),
                    child: Text(
                      'General',
                      style: TextStyle(color: Colors.grey, fontSize: height*0.022),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: generalSettingsList.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return GeneralSettingsListCard(context: context,data: generalSettingsList[index],);
                    }),
              ),
            ),

          ],
        ),
      ),

    );
  }

}

