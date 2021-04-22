import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';

class BottomSelector extends StatelessWidget {
  const BottomSelector({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width/2,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))
            ),
            child: Text(
              'Buy Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: size.width/2,
            child: Text(
              'Description',
              style: TextStyle(
                  color: kTextColor,
                  fontSize: 16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
