import 'package:flutter/material.dart';
import 'package:food_app/Models/food.dart';

class FoodDetail extends StatelessWidget {
  final FoodModel food;
  const FoodDetail({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(food.title)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                
                height: 250.0,
                width: double.infinity,
                child: Hero(
                  tag: food.imageUrl,
                  child: Image.asset(
                    food.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                
              ),
              SizedBox(height:12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(food.rate,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )),
                  Text(
                    '\$${food.price}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height:20.0),
              Text(
                food.desc,
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  
                ),textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
