import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'title_and_price.dart';
import 'bottom_selector.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ImageAndIcons(size: size),
        TitleAndPrice(),
        BottomSelector(size: size)
      ],
    );
  }
}

