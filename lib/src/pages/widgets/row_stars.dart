import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowStarts extends StatelessWidget {
  final double stars;
  final double size;
  final Color color;

  const RowStarts({
    Key key,
    this.stars,
    this.size,
    this.color = Colors.cyan,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    Color colorStars = color;
    final _fillStar = Padding(
      padding: EdgeInsets.only(right: 1.0),
      child: Icon(Icons.star, color: colorStars, size: size),
    );

    final _halfStar = Padding(
      padding: EdgeInsets.only(right: 1.0),
      child: Icon(Icons.star_half, color: colorStars, size: size),
    );

    final _voidStar = Padding(
      padding: EdgeInsets.only(right: 1.0),
      child: Icon(Icons.star, color: Colors.grey[300], size: size),
    );

    int fillStars = stars.floor();
    final bool addHalfStar = (stars - fillStars) >= 0.5;
    List<Widget> listStars = List.generate(fillStars, (i) => _fillStar);
    if(addHalfStar){
      listStars.add(_halfStar);
      fillStars++;
    }
    listStars.addAll(List.generate(10 - fillStars, (i) => _voidStar));
    return Row(children: listStars);
  }
}