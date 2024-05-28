class Transaction {
  String? hash;
  int? size;
  int? txIndex;
  int? time;
  int? blockIndex;
  int? blockHeight;

  Transaction({
    this.hash,
    this.size,
    this.txIndex,
    this.time,
    this.blockIndex,
    this.blockHeight,
  });

  DateTime get converted {
    final value = DateTime.fromMillisecondsSinceEpoch(time ?? 0);
    return value;
  }

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      hash: json['hash'],
      size: json['size'],
      txIndex: json['tx_index'],
      time: json['time'],
      blockIndex: json['block_index'],
      blockHeight: json['block_height'],
    );
  }
}
