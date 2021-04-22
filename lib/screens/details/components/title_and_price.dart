import 'package:flutter/cupertino.dart';
import 'package:plant_app/constants/constants.dart';


class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding *0.5),
      child: Row(
        children: [
          RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Angelica\n',
                        style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 35
                        )
                    ),
                    TextSpan(
                        text: 'Russia',
                        style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.36),
                            fontSize: 20
                        )
                    )
                  ]
              )
          ),
          Spacer(),
          Text(
            '\$440',
            style: TextStyle(
                color: kPrimaryColor.withOpacity(0.84),
                fontSize: 22
            ),
          )
        ],
      ),
    );
  }
}