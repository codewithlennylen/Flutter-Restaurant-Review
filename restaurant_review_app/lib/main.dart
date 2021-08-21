import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apex Kitchen Reviews',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Apex Kitchen Reviews"),
        // ),
        body: Center(
          child: ListView(
            children: [
              RestaurantCard(
                  "WaJeff Kikwetu", 4.7, "https://dummyimage.com/250x250"),
              RestaurantCard("Seasons", 4.4, "https://dummyimage.com/250x250"),
              RestaurantCard(
                  "Dee's Small Kitchen", 4.2, "https://dummyimage.com/250x250"),
            ],
          ),
        ),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}

// * STRATEGY CHECK
// I could create a list of RestaurantCard Objects that I could then display onto the homepage
// ListView
List restaurantCards = [];

// ignore: must_be_immutable
class RestaurantCard extends StatelessWidget {
  String restaurantTitle = "";
  double restaurantScore = 0.0;
  String restaurantImage = "";

  // Constructor
  RestaurantCard(
      String restaurantTitle, double restaurantScore, String restaurantImage) {
    this.restaurantTitle = restaurantTitle;
    this.restaurantScore = restaurantScore;
    this.restaurantImage = restaurantImage;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[400],
      elevation: 8.0,
      child: Container(
        width: 300,
        height: 325,
        child: Column(
          children: [
            // This Column Widget is for the Restaurant Title & Rating.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.restaurantTitle),
                Text("$restaurantScore / 5 Stars"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            // This is the restaurant's profile image
            Image.network(this.restaurantImage),
            SizedBox(
              height: 10,
            ),
            // A button that takes you to a different page.
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Post a Review"),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
