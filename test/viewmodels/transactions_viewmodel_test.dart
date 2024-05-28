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

    
  });
}
