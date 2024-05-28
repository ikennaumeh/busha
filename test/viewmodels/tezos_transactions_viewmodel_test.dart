import 'package:busha_test/models/tezos_response.dart';
import 'package:busha_test/ui/views/tezos_transactions/tezos_transactions_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:busha_test/app/app.locator.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';
import '../helpers/test_helpers.mocks.dart';

void main() {
  late TezosTransactionsViewModel viewModel;
  late MockCryptoService mockCryptoService;
  group('TezosTransactionsViewModel Tests -', () {
    setUp(() {
      registerServices();
      mockCryptoService = MockCryptoService();
      viewModel = TezosTransactionsViewModel(mockCryptoService);
    });
    tearDown(() => locator.reset());

    void arrangeSuccessResponseFromCryptoService() {
      when(mockCryptoService.fetchTezosBlocks()).thenAnswer((_) async => [
            TezosResponse(
                level: 1,
                hash: "FOWN3029323",
                fees: 132,
                reward: 131,
                bonus: 3232)
          ]);
    }

    group("initial values", () {
      test("test that transaction list is empty at the start", () {
        expect(viewModel.transactionList, isEmpty);
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
        expect(viewModel.transactionList, isNotEmpty);
      });
    });
  });
}
