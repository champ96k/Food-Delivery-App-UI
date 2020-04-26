import 'package:flutter/material.dart';

class FoodTab extends StatefulWidget {
  final img;
  FoodTab(this.img);
  @override
  _FoodTabState createState() => _FoodTabState(this.img);
} 

class _FoodTabState extends State<FoodTab> {

  var img;
  _FoodTabState(this.img);

  Widget itemMenu(var img, var color) {
    return Padding( 
      padding: const EdgeInsets.symmetric(vertical: 6.0), 
      child: Container(
        height: 80.0,
        width: 90.0,  
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(img),
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: Column(
                    children: <Widget>[
                      itemMenu("assets/images/pic2.png", Colors.transparent),
                      itemMenu("assets/images/pic3.png", Colors.transparent),
                      itemMenu("assets/images/pic4.png", Colors.transparent),
                      itemMenu("assets/images/pic5.png", Colors.grey[200]),
                      itemMenu("assets/images/pic2.png", Colors.transparent),
                      itemMenu("assets/images/pic3.png", Colors.transparent),
                      itemMenu("assets/images/pic4.png", Colors.transparent),
                      itemMenu("assets/images/pic5.png", Colors.transparent),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: 12,  
            ), 
            Container( 
              width: MediaQuery.of(context).size.width * 0.58,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Image(
                        image: AssetImage(img),
                        height: 250,  
                        fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 8, 
                  ),
                  Wrap(
                    children: <Widget>[
                      Text(
                      "Double Pizza", 
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.0,
                      ),
                    ),
                    ],
                  ),
                                      
                  
                  SizedBox(
                    height: 8, 
                  ),
                  Text(
                    "Weight -350 g",
                    style: TextStyle(
                      fontSize: 16.0, 
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox( 
                    height: 8,
                  ),

                  Text("\$ 7.99",
                    style: TextStyle(
                      fontSize:42.0,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold
                    ),
                  ), 

                  SizedBox( 
                    height: 8,   
                  ),

                  Wrap(
                    children: <Widget>[
                      Text("The McDonald's Double Cheeseburger features two 100% pure beef burger patties seasoned with just a pinch of salt and pepper. It's topped with tangy pickles, chopped onions, ketchup, mustard and two slices of melty American cheese. It contains no artificial flavors, preservatives or added colors from artificial sources",
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 0.85, 
                        color: Colors.grey, 
                      ),
                      )
                    ],
                  ),

                  
                  
                   
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
