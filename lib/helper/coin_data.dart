import 'dart:convert';
import 'package:crypto_price_list/model/coin_model.dart';
import 'package:http/http.dart' as http;

class CoinData {
  List<Coin> coins = [];

  Future<void> getCoinData() async {
    var response = await http.get(
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&spakline=false");
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);
      responseBody.forEach((coinData) {
        Coin coin = Coin(
            name: coinData["name"],
            imageUrl: coinData["image"],
            amount: coinData["atl"].toString());
        coins.add(coin);
      });
    }
  }
}
