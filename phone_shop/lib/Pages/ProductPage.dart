import 'package:flutter/material.dart';
import 'package:phone_shop/services/Product.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key key, this.item}) : super(key: key);

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text(item.title),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.pink[500],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset('assets/${item.image}'),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Text(item.description)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Company:'),
                  SizedBox(width: 10.0),
                  Text(
                    item.company.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Price:'),
                  SizedBox(width: 10.0),
                  Text(
                    '${item.price}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (!item.inCart) {
              print(item.id);
            }
          },
          child: Icon(Icons.shopping_cart),
          backgroundColor: item.inCart ? Colors.black : Colors.pink[400],
        ));
  }
}
