import 'package:flutter/material.dart';
import 'MenuScreens/MenuLandingScreen.dart';



class TableScreen extends StatelessWidget {

  /*String Table1;

  TableScreen(this.Table1);
*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Tables'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.count(
              crossAxisCount: 4,
            children: <Widget>[

              //Top line
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuScreen()));
                },
                child: Card(
                  //elevation: 10,
                  child: Center(child: Text("Table1")
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  //elevation: 10,
                  child: Center(child: Text('Table 2')),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  //elevation: 10,
                  child: Center(child: Text('Table 3')),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  //elevation: 10,
                  child: Center(child: Text('Table 4')),
                ),
              ),

              //Second Row
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
