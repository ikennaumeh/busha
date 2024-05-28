import 'package:busha_test/models/block_transaction.dart';
import 'package:busha_test/models/transaction.dart';
import 'package:busha_test/ui/views/transactions/transactions_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:busha_test/app/app.locator.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';
import '../helpers/test_helpers.mocks.dart';

void main() {
  late TransactionsViewModel viewModel;
  late MockCryptoService mockCryptoService;
  String blockHash = "block-hash";
  group('TransactionsViewModel Tests -', () {
    setUp(() {
      registerServices();
      mockCryptoService = MockCryptoService();
      viewModel = TransactionsViewModel(blockHash, mockCryptoService);
    });
    tearDown(() => locator.reset());

    BlockTransaction blockTransaction = BlockTransaction(hash: "hash", tx: [
      Transaction(
        hash: "hash",
        size: 234,
        blockHeight: 242,
        time: 42323,
      )
    ]);

    void arrangeSuccessResponseFromCryptoService() {
      when(mockCryptoService.fetchBlockTransactions(blockHash: blockHash))
          .thenAnswer((_) async => blockTransaction);
    }

    group("initial values", () {
      test("test that transaction list is empty at the start", () {
        expect(viewModel.blockTransaction, isNull);
      });

      test("test that viewModel is not busy at the start", () {
        expect(viewModel.isBusy, false);
      });
    });

    group("data fetched", () {
      test("test that tezos list was fetched after the network call was done",
          () async {
        arrangeSuccessResponseFromCryptoService();
        await viewModel.fetchTransactions();
        expect(viewModel.blockTransaction, blockTransaction);
      });
    });
  });
}
