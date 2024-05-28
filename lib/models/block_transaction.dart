import 'transaction.dart';

class BlockTransaction {
  String? hash;
  List<Transaction>? tx;

  BlockTransaction({
    this.hash,
    this.tx,
  });

  BlockTransaction.fromJson(Map<String, dynamic> json) {
    hash = json['hash'];
    if (json['tx'] != null) {
      tx = <Transaction>[];
      json['tx'].forEach((v) {
        tx!.add(Transaction.fromJson(v));
      });
    }
  }
}
