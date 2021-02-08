import 'package:carpooling/Utilis/style.dart';
import 'package:flutter/material.dart';
import'package:carpooling/Model/slide.dart';

class SlideItem extends StatefulWidget {
  final int index;
  SlideItem(this.index);

  @override
  _SlideItemState createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {

    return Container(
        child: Padding(
         padding: const EdgeInsets.all(20),
       child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(slideList[widget.index].imageUrl),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          slideList[widget.index].title,
          style: kTitlestyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[widget.index].description,
          style: kSubtitlestyle,
          textAlign: TextAlign.center,
        ),
      ],
       )));
  }
}