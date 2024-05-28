import 'package:busha_test/enum/coin.dart';

class Asset {
  String image;
  String title;
  String shortHand;
  String amount;
  bool dipped;
  double percentage;
  Coin coin;
  String? blockHash;

  Asset({
    required this.image,
    required this.title,
    required this.shortHand,
    required this.amount,
    required this.dipped,
    required this.percentage,
    required this.coin,
    this.blockHash,
  });

  Asset copyWith({
    String? image,
    String? title,
    String? shortHand,
    String? amount,
    bool? dipped,
    double? percentage,
    Coin? coin,
    String? blockHash,
  }) {
    return Asset(
      image: image ?? this.image,
      title: title ?? this.title,
      shortHand: shortHand ?? this.shortHand,
      amount: amount ?? this.amount,
      dipped: dipped ?? this.dipped,
      coin: coin ?? this.coin,
      blockHash: blockHash ?? this.blockHash,
      percentage: percentage ?? this.percentage,
    );
  }
}
