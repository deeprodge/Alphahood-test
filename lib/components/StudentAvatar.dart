import 'package:flutter/material.dart';
import 'package:alphahood/data/data.dart';

class StudentAvatar extends StatelessWidget {
  const StudentAvatar(
      {this.size = 50,
      @required this.image}
      );
final double size;
final AssetImage image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
          ),
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor
      ),
    );
  }
}