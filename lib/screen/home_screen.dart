import 'package:flutter/material.dart';
import 'package:market_app/model/phone.dart';
import 'package:market_app/screen/cart_screen.dart';
import 'package:market_app/screen/detail_screen.dart';
import 'package:market_app/screen/info_screen.dart';
import 'package:market_app/util/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'PhoneCell',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartScreen();
                }));
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoScreen();
                }));
              },
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Material(
          color: Colors.transparent,
          child: Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: phoneList.map((phone) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(phone: phone);
                      }));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(color: Colors.grey),
                              child: Image.network(
                                phone.phoneImage,
                                width: MediaQuery.of(context).size.width * 0.5 -
                                    20,
                                height:
                                    MediaQuery.of(context).size.height * 0.2 -
                                        50,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4, left: 4),
                          child: Text(
                            phone.phoneName,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4, left: 4),
                          child: Text(
                            rupiahCurrencyFormat.format(phone.phonePrice),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()),
          ),
        ),
      ),
    );
  }
}
