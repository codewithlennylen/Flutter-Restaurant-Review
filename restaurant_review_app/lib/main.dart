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
// I'll get back to this in the future
//// List restaurantCards = [];

class ViewRestaurant extends StatelessWidget {
  // const ViewRestaurant({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Image.network("https://dummyimage.com/500x250"),
          SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.grey[850],
            elevation: 8.0,
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Restaurant Title",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Restaurant Description",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //! Consider the Expanded Widget (avoid sizedBoxes all over the place)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          //* Move back to the previous screen/page (Route)
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("DETAILS"),
                        ),
                        ElevatedButton(
                          //* Move back to the previous screen/page (Route)
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("MENU"),
                        ),
                        ElevatedButton(
                          //* Move back to the previous screen/page (Route)
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("REVIEWS"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                onPressed: () {
                  //* Move onto the next screen/page (Route)
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewRestaurant()));
                },
                child: Text("Post a Review"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
