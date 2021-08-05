import 'package:flutter/material.dart';
import 'package:food_app/Models/food.dart';

class TopOffers extends StatelessWidget {
  final List<FoodModel> foodlist;
  const TopOffers({Key? key,required this.foodlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: foodlist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/img${index + 1}.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodlist[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          foodlist[index].desc,
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      '\$${foodlist[index].price}',
                      style: TextStyle(
                           fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
             
             Divider(
               color: Colors.grey.shade800,
               height: 2.0,
             )
            ],
          );
        },
      ),
    );
  }
}
