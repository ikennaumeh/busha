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

    
  });
}
