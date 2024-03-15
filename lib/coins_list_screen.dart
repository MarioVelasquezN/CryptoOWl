import 'package:flutter/material.dart';
class CoinsListScreen extends StatefulWidget {
  @override
  State<CoinsListScreen> createState() => _CoinsListScreenState();
}

class _CoinsListScreenState extends State<CoinsListScreen> {
  List<String> _coins = [
    "Bitcoin",
    "Ethereum",
    "Cardano",
    "Solana",
    "Polkadot",
    "Dogecoin",
    "Avalanche",
    "Chainlink",
    "Algorand",
    "Stellar"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _coins.length,
      itemBuilder: (context, index) {
        return CoinListItem(
          coinName: _coins[index],
        );
      },
    );
  }
}

class CoinListItem extends StatelessWidget {
  final String coinName;
  final bool up = false;
  const CoinListItem({Key? key, required this.coinName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: DefaultTextStyle(
        style: const TextStyle(fontSize: 20, color: Colors.black87),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              SizedBox(
                width: 35,
                child: Image.network(
                    "https://cryptologos.cc/logos/yooshi-yooshi-logo.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coinName,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("BTC"),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$20.000"),
                  Text("-5%", 
                  style: TextStyle(color:up?Colors.green:Colors.red, fontSize: 18)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
