import 'package:flutter/material.dart';
import 'package:alphahood/data/data.dart';
class elevatedCard extends StatelessWidget {
  const elevatedCard({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(currentDisplaySize.height*0.01477),
      ),
      //borderRadius: BorderRadius.circular(15),
      color: Theme.of(context).primaryColor,
      child: child,
    );
  }
}
