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
          child: RestaurantCard(),
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

class RestaurantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[400],
      elevation: 8.0,
      child: Container(
        width: 300,
        height: 300,
        child: Column(
          children: [
            // This Column Widget is for the Restaurant Title & Rating.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("WaJeff Restaurant"),
                Text("4.2 / 5 Stars"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            // This is the restaurant's profile image
            Image.network("https://dummyimage.com/300x220"),
            SizedBox(
              height: 10,
            ),
            // A button that takes you to a different page.
            Center(
              child: ElevatedButton(
                onPressed: null,
                child: Text("Post a Review"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
