import 'package:flutter/material.dart';
import 'package:food_app/Models/food.dart';
import 'package:food_app/screens/food_detail.dart';
import 'package:food_app/widgets/single_food_cart.dart';

class FoodCards extends StatelessWidget {
  
  final List<FoodModel> myfoods;
  const FoodCards({Key? key, required this.myfoods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myfoods.length,
        itemBuilder: (context, index) {
          return SingleFoodCard(food: myfoods[index],);
        },
      ),
    );
  }
}
