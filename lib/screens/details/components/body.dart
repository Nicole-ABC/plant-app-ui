import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height *0.8,
          child: Row(
            children: [
              Expanded(
                child: SafeArea(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                          onPressed: (){
                            Navigator.pop(context);
                          }
                        ),
                      ),
                      Spacer(),
                      MyIconButton(size: size, icon: 'assets/icons/sun.svg'),
                      Spacer(),
                      MyIconButton(size: size, icon: 'assets/icons/icon_2.svg'),
                      Spacer(),
                      MyIconButton(size: size, icon: 'assets/icons/icon_3.svg'),
                      Spacer(),
                      MyIconButton(size: size, icon: 'assets/icons/icon_4.svg'),
                      Spacer(),
                    ],
                  ),
                )
              ),
              Stack(
                children: [
                  Container(
                    height: size.height * 0.8,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(63),
                        topLeft: Radius.circular(63)
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,10),
                          color: kPrimaryColor.withOpacity(0.3),
                          blurRadius: 60
                        )
                      ],
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/img.png')
                      )
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: SafeArea(
                      child: SvgPicture.asset('assets/icons/more.svg'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(kDefaultPadding *0.75),
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
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: size.height * 0.085,
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
                height: size.height * 0.085,
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
        )
      ],
    );
  }
}

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    Key key,
    this.icon,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 0.6),
      width:  size.width * 0.15,
      height: size.width * 0.15,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,10),
            blurRadius: 30,
            color: kPrimaryColor.withOpacity(0.4)
          ),
          BoxShadow(
              offset: Offset(-10,-10),
              blurRadius: 20,
              color: Colors.white
          ),
        ]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
