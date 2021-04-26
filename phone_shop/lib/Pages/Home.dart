import 'package:flutter/material.dart';
import 'package:phone_shop/Pages/CartPage.dart';
import 'package:phone_shop/Pages/ProductPage.dart';
import 'product_card.dart';
import 'package:phone_shop/services/Product.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = Product.getProducts();
  final cartData = [];
  // print(items);
  updateCart(index) {
    // setState(() {
    items[index].inCart = true;
    // });
    print(index);
    if (cartData.contains(items[index])) {
      cartData.remove(items[index]);
    } else {
      cartData.add(items[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('My Phone Shop'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.pink[500],
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    size: 25.0,
                  )
                ],
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CartPage(
                          data: cartData,
                          delete: (value) {
                            setState(() {
                              items.remove(value);
                            });
                          },
                        )));
              },
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.width * 0.65,
                      child: Image.asset('assets/${items[index].image}'),
                    ),
                    SizedBox(height: 5.0),
                    Text(items[index].title,
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Text(
                      'USD ${items[index].price}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    cartData.contains(items[index])
                        ? Text('Added to Cart')
                        : FlatButton(
                            onPressed: () {
                              setState(() {
                                if (cartData.contains(items[index])) {
                                  cartData.remove(items[index]);
                                  items[index].inCart = true;
                                } else {
                                  cartData.add(items[index]);
                                  items[index].inCart = true;
                                }
                              });
                            },
                            child: Text(
                              'Add To Chart',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.blue[600],
                          ),
                    SizedBox(height: 10)
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(item: items[index])));
            },
          );
        },
      ),
    );
  }
}
