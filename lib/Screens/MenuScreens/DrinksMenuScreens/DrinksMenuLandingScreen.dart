import 'package:flutter/material.dart';
import 'package:waiter_app/Models/ProductModel.dart';
import 'package:waiter_app/Screens/MenuScreens/DrinksMenuScreens/DrinksMenu.dart';

import 'CheckOutScreen.dart';


class DrinksMenuLandingPage extends StatefulWidget {
  @override
  _DrinksMenuLandingPageState createState() => _DrinksMenuLandingPageState();
}

class _DrinksMenuLandingPageState extends State<DrinksMenuLandingPage> {

 List<ProductModel> cart = [];
 int sum =0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drinks'),
          bottom: TabBar(
              tabs: <Widget>[
                Tab(text: 'Drinks Menu',),
                Tab(text: 'Check Out',)
              ]
              ),
        ),
        body: TabBarView(
            children: <Widget> [
              //Get the selected product
              DrinksMenu((selectedProduct){
                setState(() {
                  cart.add(selectedProduct);
                  sum=0;
                  cart.forEach((item){
                    sum=sum+item.price;
                  });
                });
              }),
              Column(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CheckoutScreen(cart, sum),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
