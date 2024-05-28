class LatestBlock {
  String? hash;
  int? time, blockIndex, height;
  List<int>? txIndexes;

  LatestBlock({
    this.hash,
    this.time,
    this.blockIndex,
    this.height,
    this.txIndexes,
  });

  factory LatestBlock.fromJson(Map<String, dynamic> json) {
    return LatestBlock(
      hash: json['hash'],
      time: json['time'],
      blockIndex: json['block_index'],
      height: json['height'],
      txIndexes: json['txIndexes'].cast<int>(),
    );
  }
}
