import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StarWidget extends StatelessWidget {
  final int numberOfStars;
  const StarWidget({Key key, this.numberOfStars}) : super(key: key);

  Widget getStarWidgets(int count) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < 5; i++) {
      if(i<count){
        list.add(Icon(FontAwesomeIcons.solidStar, color: Colors.amber));
        list.add(SizedBox(width: 5.0));
      }
      else{
        list.add(Icon(FontAwesomeIcons.solidStar, color: Colors.grey));
        list.add(SizedBox(width: 5.0));
      }
    }
    return new Row(
      children: list
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: getStarWidgets(numberOfStars),
    );
  }
}
