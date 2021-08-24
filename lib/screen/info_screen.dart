import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Info',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'About This App',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Simply, it is a marketplace app that sells phones.',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
