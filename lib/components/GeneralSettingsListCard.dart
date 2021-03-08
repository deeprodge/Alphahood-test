import 'package:flutter/material.dart';
import 'package:alphahood/data/data.dart';

class GeneralSettingsListCard extends StatelessWidget {
  const GeneralSettingsListCard({
    this.context,
    this.onTap,
    this.data
});
  final Function onTap;
  final GeneralSettingsListData data;
  final BuildContext context;

@override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
    return FlatButton(
      onPressed: (){
        if((data.nextPageRouteName??'') == ''){

        }else if(data.nextPageRouteName != ''){
          Navigator.pushNamedAndRemoveUntil(context, data.nextPageRouteName, (e) => false);
        }
      },
      child: Container(
        height: height*0.0825,
        child: Padding(
          padding: EdgeInsets.only(top: height*0.0,bottom: height*0.0),
          child: Row(
            children: [
              Icon(data.iconData, size: height*0.0369),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: height*0.0246),
                  child: Text(
                    data.title,
                    style: TextStyle(
                      fontSize: height*0.022,
                      fontWeight: FontWeight.w600,

                    ),
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded, size: height*0.025,),
            ],
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide( //                   <--- left side
              color: Colors.grey[200],
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}