import 'package:flutter/material.dart';
import 'package:waiter_app/Screens/MenuScreens/DrinksMenuScreens/DrinksMenu.dart';

import 'DrinksMenuScreens/DrinksMenuLandingScreen.dart';


class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                        width: 100,
                        child: Card(child: Center(child: Text('Table 1')))),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child:TextField(
                            keyboardType: TextInputType.number,
                           decoration: InputDecoration(
                             labelText: 'Enter PAX',
                           ),
                          ) ,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    children: <Widget>[
                      //Top line
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DrinksMenuLandingPage()));
                        },
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Drinks')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Breakfast')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Lunch')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Alchoholic Drinks')),
                        ),
                      ),

                     /* //Second Row
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 5')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 6')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 7')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 8')),
                        ),
                      ),

                      //Third Row
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 9')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 10')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 11')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 12')),
                        ),
                      ),

                      //Fourth Row
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 13')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 14')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 15')),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Card(
                          //elevation: 10,
                          child: Center(child: Text('Table 16')),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],


            ),
          )
      )
    );
  }
}
