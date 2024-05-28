class TezosResponse {
  int? level;
  String? hash;
  DateTime? timestamp;
  int? fees;
  int? reward;
  int? bonus;

  TezosResponse({
    this.level,
    this.hash,
    this.timestamp,
    this.fees,
    this.reward,
    this.bonus,
  });

  factory TezosResponse.fromJson(Map<String, dynamic> json) {
    return TezosResponse(
      level: json['level'],
      hash: json['hash'],
      timestamp: DateTime.tryParse(json['timestamp']),
      fees: json['fees'],
      reward: json['reward'],
      bonus: json['bonus'],
    );
  }
}
