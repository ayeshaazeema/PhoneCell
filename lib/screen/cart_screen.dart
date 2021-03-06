import 'package:flutter/material.dart';
import 'package:market_app/model/cart.dart';
import 'package:market_app/model/phone.dart';
import 'package:market_app/screen/checkout_screen.dart';
import 'package:market_app/util/widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isFbCheckoutVisible = false;

  @override
  Widget build(BuildContext context) {
    if (cartList.length > 0) {
      isFbCheckoutVisible = true;
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFbCheckoutVisible,
        child: Container(
          padding: EdgeInsets.only(left: 16),
          margin: EdgeInsets.only(left: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutScreen();
              }));
            },
            style: ElevatedButton.styleFrom(primary: Colors.black45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Checkout'), Icon(Icons.arrow_forward_ios)],
            ),
          ),
        ),
      ),
      body: Container(
          child: cartList.length > 0
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      var phone = findPhone(cartList[index]);
                      return Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  child: Container(
                                    child: Image.network(phone.phoneImage),
                                    decoration:
                                        BoxDecoration(color: Colors.grey),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        phone.phoneName,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(rupiahCurrencyFormat
                                          .format(phone.phonePrice))
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      deleteItemCart(phone.phoneId);
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.grey,
                                    )),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: cartList.length,
                  ),
                )
              : Center(child: Text('Empty cart, please add some items.'))),
    );
  }

  Phone findPhone(Cart cartItem) {
    return phoneList.firstWhere((phone) => phone.phoneId == cartItem.phoneId);
  }

  deleteItemCart(int phoneId) {
    setState(() {
      cartList.removeWhere((cartItem) => cartItem.phoneId == phoneId);
      if (cartList.length == 0) {}
    });
  }
}
