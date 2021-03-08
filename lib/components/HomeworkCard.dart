import 'package:flutter/material.dart';

class HomeworkCard extends StatelessWidget {
  const HomeworkCard({
    this.value,
    this.onTap,
    this.topic,
    this.subjectAndDay,
  });

  final bool value;
  final String topic;
  final String subjectAndDay;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //bool value = false;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.only(left: height*0.0184, right: 20, top: height*0.0172, bottom: height*0.0166),
        height: height*0.0789,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(height*0.012),
            color: Color(0xFFEAF0F5)),
        child: Row(
          children: [
            Center(
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: value
                      ? Border.all(width: 0)
                      : Border.all(color: Colors.grey),
                  gradient: value
                      ? LinearGradient(
                          colors: [
                            Color(0xFF08ACF5),
                            Color(0xFF0769EB)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                      : LinearGradient(
                          colors: [
                            Color(0x8ACF5),
                            Color(0x769EB)
                          ],
                        ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: value
                      ? Icon(
                          Icons.check,
                          size: height*0.0163,
                          color: Colors.white,
                        )
                      : Icon(
                        Icons.check_box_outline_blank,
                        size: height*0.0163,
                        color: Color(0x769EB),
                      ),
                    ),
                  ),
                )),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: height*0.0135),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        topic,
                        style: TextStyle(
                          fontSize: height*0.0172,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        subjectAndDay,
                        style: TextStyle(
                            fontSize: height*0.0172,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
