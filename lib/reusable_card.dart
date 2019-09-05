import 'package:flutter/material.dart';
class ReUsableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;
  ReUsableCard({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
