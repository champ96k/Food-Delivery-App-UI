import 'package:flutter/material.dart';
import 'package:food_delivery/UI/FoodTab.dart';

class FoodDetails extends StatefulWidget {
  final title, img;
  FoodDetails(this.title, this.img);
  @override
  _FoodDetailsState createState() => _FoodDetailsState(this.title, this.img);
}

class _FoodDetailsState extends State<FoodDetails>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  var title, img;
  _FoodDetailsState(this.title, this.img);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 22.0,
          ),
          ListTile(
            leading: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Colors.grey,
              child: Container(
                height: 60,
                width: 55,   
                margin: EdgeInsets.all(0.50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black54),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                Wrap(
                  children: <Widget>[
                    Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20.0,     
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.75,
                  ),
                ),
                  ],
                ), 
                Container(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.restaurant_menu), onPressed: () {}),
                      IconButton(icon: Icon(Icons.menu), onPressed: () {})
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22.0,
          ),
          TabBar(
            indicatorColor: Colors.transparent,
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 20.0, 
              fontWeight: FontWeight.w500,
              letterSpacing: 0.75,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 18.0,
              letterSpacing: 0.75,
              fontWeight: FontWeight.w400,
            ),
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text("All Burgers"),
              ),
              Tab(
                child: Text("Popular"),
              ),
              Tab(
                child: Text("New Items"),
              ),
              Tab(
                child: Text("Hot Deal"),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                FoodTab(img),
                FoodTab(img),
                FoodTab(img),
                FoodTab(img),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        height: 75,
        width: 75, 
        decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
            )),
        child: IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.white,
              size: 36.0,
            ),
            onPressed: () {}),
      ),
    ));
  }
}
