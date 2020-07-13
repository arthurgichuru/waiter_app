import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:waiter_app/Screens/MenuScreens/DrinksMenuScreens/BillQRScreen.dart';

class CheckoutScreen extends StatelessWidget {

  final cart;
  final sum;
  //String barcode ='';

  CheckoutScreen(this.cart, this.sum);

  GlobalKey globalKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {

    final bodyHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).viewInsets.bottom;

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cart[index].name),
                trailing: Text("KES ${cart[index].price}", style: TextStyle(color: Colors.red, fontSize: 20),),
                onTap: () {},
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: cart.length,
            shrinkWrap: true,
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(child: Text('TOTAL',style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),)),
                SizedBox(width: 10,),
                Container(child: Text('KES $sum',style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      color: Colors.blue,
                        child:Text('SEND TO KITCHEN', style: TextStyle(color: Colors.white),),
                        onPressed: (){}),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      color: Colors.green,
                        child:Text('PRINT BILL',style: TextStyle(color: Colors.white),),
                        onPressed: (){}),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                        color: Colors.green,
                        child:Text('PRINT QR CODE',style: TextStyle(color: Colors.white),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowQRScreen(value:sum)));
                        }),
                  ),
                ],
              ),
            ),
          ),
       /*  Expanded(
            child: Container(
              child: RepaintBoundary(
                key: globalKey,
                child: QrImage(
                  data: '$sum',
                  size: 0.5 * bodyHeight,
                ),
              ),
            ),
          ),*/
        ],
    );
  }
}
