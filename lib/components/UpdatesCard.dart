import 'package:flutter/material.dart';
import 'package:alphahood/data/data.dart';

class UpdatesCard extends StatelessWidget {
  const UpdatesCard({
    this.data,
});
  final UpdateCardData data;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        padding: const EdgeInsets.all(10),
       // height: 150,
        width: width*0.266,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            //color: Theme.of(context).primaryColor,
            gradient: LinearGradient(
              colors: [data.topColor,
                data.bottomColor
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex:1,
              child: Container(
                alignment: Alignment.topLeft,
                child: Icon(
                  data.icon,
                  size: height*0.030,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    data.value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height*0.019,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    data.typeText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height*0.0172,
                      fontWeight: FontWeight.w400,
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


