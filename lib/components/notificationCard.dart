import 'package:flutter/material.dart';
import 'package:alphahood/data/data.dart';
class NotificationCard extends StatelessWidget {
  const NotificationCard({
    @required this.data,
    //this.height
});

  final NoticeBoardCardData data;
  //final double height;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          //color: Theme.of(context).primaryColor,
          gradient: LinearGradient(
            colors: [Color(0xFF08ACF5),
              Color(0xFF0769EB)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )

      ),
      child: Padding(
        padding:  EdgeInsets.fromLTRB(height*0.02955, height*0.022, height*0.02955, height*0.0184),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: height*0.0227,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  //height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height*0.0087),
                      //color: Theme.of(context).primaryColor,
                      gradient: LinearGradient(
                        colors: [Colors.white,
                          Color(0xFFB3D5F4)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [BoxShadow(
                        color: Color(0x850464B8),
                        offset: Offset(0,6),
                        blurRadius: 10,
                        spreadRadius: 3,
                      )]

                  ),
                  child: Padding(
                    padding: EdgeInsets.all(height*0.0073),
                    child: Text(
                      data.typeText,
                      style: TextStyle(
                        fontSize: height*0.017,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  data.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: height*0.0227,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                data.date,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: height*0.0197,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}