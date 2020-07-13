import 'package:flutter/material.dart';
import 'package:waiter_app/Models/ProductModel.dart';


class DrinksMenu extends StatelessWidget {

  //Value setter that calls the contents of the Product Model
  final ValueSetter<ProductModel> _valueSetter;

  DrinksMenu(this._valueSetter);

  List<ProductModel> products = [
    ProductModel("Coke", 50),
    ProductModel("Still Water", 100),
    ProductModel("Sparkling Water", 300),
    ProductModel("Orange Juice", 100),
    ProductModel("Mango Juice", 250),
    ProductModel("Cocktail", 300),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].name),
            trailing: Text("\KES ${products[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
            onTap: (){

              _valueSetter(products[index]);
            },
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
        itemCount: products.length
    );
  }
}
