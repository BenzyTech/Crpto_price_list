import 'package:flutter/material.dart';

import 'coinCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          "History",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          coinCard(
            sent: 'Recieved',
            name: "0.0065 Bitcoin",
            symbol: "9:38, AUG 27, 2019",
            imageUrl:
                'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579',
            // price: 38684,
            change: 68,
            // changepercentate: 1.148,
          ),
          coinCard(
            sent: 'Sent',
            name: 'Ethereum',
            symbol: "9:38, AUG 27, 2019",
            imageUrl:
                'https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880',
            // price: 2948.88,
            change: 48.03,
            // changepercentate: 10.84627,
          ),
          coinCard(
            sent: 'Recieved',
            name: "0.0049 Ripple",
            symbol: "9:38, AUG 27, 2019",
            imageUrl:
                'https://assets.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1605778731',
            // price: 2948.88,
            change: 288.55,
            // changepercentate: 10.84627,
          ),
          coinCard(
            sent: 'Sent',
            name: "0.0065 Bitcoin",
            symbol: " 9:38, AUG 27, 2019",
            imageUrl:
                'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579',
            // price: 2948.88,
            change: -67,
            // changepercentate: 10.84627,
          ),
          coinCard(
            sent: 'Recieved',
            name: "0.0098 Ripple",
            symbol: "9:38, AUG 27, 2019",
            imageUrl:
                'https://assets.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1605778731',
            // price: 2948.88,
            change: 74,
            // changepercentate: 10.84627,
          ),
        ],
      ),
    );
  }
}
