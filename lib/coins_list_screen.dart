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
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CoinListItem(
            coinName: _coins[index],
          ),
        );
      },
    );
  }
}

class CoinListItem extends StatelessWidget {
  //statelesswidget por que no necesita guardar ningun estado
  final String coinName;
  const CoinListItem({Key? key, required this.coinName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: Image.network(
              "https://cryptologos.cc/logos/bitcoin-btc-logo.png"),
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
            Text("\$1000"),
            Text("5%"),
          ],
        )
      ],
    );
  }
}
