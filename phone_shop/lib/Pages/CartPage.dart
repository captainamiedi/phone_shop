import 'package:flutter/material.dart';
import 'package:phone_shop/services/Product.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key, this.data, this.delete}) : super(key: key);

  final data;
  final ValueChanged delete;
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String title = 'My Cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.pink[500],
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(35.0, 5.0, 0.0, 0.0),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.2,
                            child: Image.asset(
                                'assets/${widget.data[index].image}'),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.remove_circle),
                          onPressed: () {
                            // setState(() {
                            //   widget.data.remove(widget.data[index]);
                            // });
                            widget.delete(widget.data[index]);
                          },
                          color: Colors.red,
                        )
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Text(widget.data[index].title),
                    SizedBox(height: 4.0),
                    Text('${widget.data[index].price}'),
                    SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (widget.data[index].count >= 1) {
                                  widget.data[index].total +=
                                      widget.data[index].price;
                                  widget.data[index].count += 1;
                                }
                              });
                            },
                            child: Text('+')),
                        SizedBox(width: 4),
                        Text('${widget.data[index].count}'),
                        SizedBox(width: 4),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (widget.data[index].count > 1) {
                                  widget.data[index].total -=
                                      widget.data[index].price;
                                  widget.data[index].count -= 1;
                                }
                              });
                            },
                            child: Text('-')),
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Total:'),
                        SizedBox(width: 7.0),
                        Text('${widget.data[index].total}')
                      ],
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}

// class CartPage extends StatelessWidget {
//   CartPage({Key key, this.item}): super(key: key)

//    Product item;

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
