import 'package:flutter/material.dart';
import 'package:food_app/Data/data.dart';
import 'package:food_app/widgets/food_cards.dart';
import 'package:food_app/widgets/iconandtitle.dart';
import 'package:food_app/widgets/search_bar.dart';
import 'package:food_app/widgets/top_offers.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade300,
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headTitle('Explore', 30.0, FontWeight.w700),
                SizedBox(height: 10.0,),
                SearchBar(),
                IconTitle(icons: icons, titles: titles),
                SizedBox(height: 10.0,),
                _headTitle('Popular Food', 25.0, FontWeight.w500),
                FoodCards(myfoods: foods,),
                _headTitle('Top Offers', 25.0, FontWeight.w500),
                TopOffers(foodlist:foods),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _headTitle(String t, double fontsize, FontWeight fontWeight) {
    return Text(
      t,
      style: TextStyle(
          color: Colors.black, fontSize: fontsize, fontWeight: fontWeight),
    );
  }
}
