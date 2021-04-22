import 'package:flutter/material.dart';
import 'package:plant_app/constants/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: (){
              Navigator.push(
                  context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen()
                )
              );
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 540,
            press: (){},
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Samara',
            country: 'Russia',
            price: 440,
            press: (){},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key key,
    this.title,
    this.image,
    this.country,
    this.press,
    this.price
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding * 2.5
      ),
      width: size.width * 0.45,
      child: Column(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10)
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image)
              )
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.25)
                    )
                  ]
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: title.toUpperCase(),
                              style: Theme.of(context).textTheme.button
                          ),
                          TextSpan(
                              text: '\n$country'.toUpperCase(),
                              style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5)
                              )
                          )
                        ]
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}