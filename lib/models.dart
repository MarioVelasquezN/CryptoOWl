class Coin {
  final String id;
  final String name;
  final String symbol;
  final String imageUrl;
  final double priceVsUsd;
  final double priceChange24Percentage;

  Coin({
    required this.id, 
    required this.name, 
    required this.symbol, 
    required this.imageUrl, 
    required this.priceVsUsd, 
    required this.priceChange24Percentage,
  }
  );
}
