import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final int price;
  final String title;
  final String img;
  final int id;
  final bool inCart;
  final Function handleCart;

  const ProductCard(
      {Key key,
      this.price,
      this.title,
      this.img,
      this.id,
      this.inCart,
      this.handleCart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        elevation: 4.0,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.65,
              child: Image.asset('assets/$img'),
            ),
            SizedBox(height: 5.0),
            Text(title,
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text(
              'USD $price',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            !inCart
                ? FlatButton(
                    onPressed: () => handleCart,
                    child: Text(
                      'Add To Chart',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue[600],
                  )
                : Text('Added to Cart'),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
