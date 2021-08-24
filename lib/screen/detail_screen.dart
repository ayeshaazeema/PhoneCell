import 'package:flutter/material.dart';
import 'package:market_app/model/cart.dart';
import 'package:market_app/model/phone.dart';
import 'package:market_app/screen/cart_screen.dart';
import 'package:market_app/screen/checkout_screen.dart';
import 'package:market_app/util/badge.dart';
import 'package:market_app/util/widget.dart';
import 'package:collection/collection.dart';

class DetailScreen extends StatefulWidget {
  final Phone phone;

  const DetailScreen({required this.phone});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              color: Colors.grey,
              child: Image.network(
                widget.phone.phoneImage,
                width: double.infinity,
              ),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CartScreen();
                            })).then((value) => setState(() {}));
                          },
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          )),
                      cartList.length > 0
                          ? Badge(numberValue: (cartList.length).toString())
                          : Container()
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
        Container(
          transform: Matrix4.translationValues(0.0, -30.0, 0.0),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.phone.phoneName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 24),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Text(
                              widget.phone.phoneBrand,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black45),
                            ),
                          )
                        ],
                      ),
                      Text(
                        rupiahCurrencyFormat.format(widget.phone.phonePrice),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.phone.phoneDescription,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              addToCart(widget.phone.phoneId, context);
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(14.0),
                                primary: Colors.black45),
                            child: Icon(Icons.add_shopping_cart_outlined)),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 16),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black45,
                                    padding: EdgeInsets.all(16.0)),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return CheckoutScreen();
                                  }));
                                },
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    ));
  }

  void addToCart(phoneId, context) {
    bool isItemExist = false;
    if (cartList.firstWhereOrNull((cartItem) => cartItem.phoneId == phoneId) !=
        null) {
      isItemExist = true;
    }
    if (isItemExist) {
      final snackBar = SnackBar(content: Text('Item already in cart!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      setState(() {
        cartList.add(Cart(phoneId: phoneId));
      });
      final snackBar = SnackBar(content: Text('Item added to cart!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
