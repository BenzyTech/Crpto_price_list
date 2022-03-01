import 'package:flutter/material.dart';

import 'coin_card.dart';
import 'helper/coin_data.dart';
import 'model/coin_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  List<Coin> coins = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    getCoinData();
  }

  getCoinData() async {
    CoinData coinData = new CoinData();
    await coinData.getCoinData();
    coins = coinData.coins;
    print(coins.length);
    setState(() {
      _loading = false;
    });
  }

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
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: coins.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CoinCard(
                      sent: 'Recieved',
                      name: coins[index].amount + " " + coins[index].name,
                      symbol: "9:38, AUG 27, 2019",
                      imageUrl: coins[index].imageUrl,
                      change: 68);
                },
              ),
            ),
    );
  }
}
