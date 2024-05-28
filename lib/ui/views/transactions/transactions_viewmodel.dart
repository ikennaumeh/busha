import 'package:busha_test/app/app.locator.dart';
import 'package:busha_test/app/app.logger.dart';
import 'package:busha_test/app/app.router.dart';
import 'package:busha_test/exceptions/busha_exception.dart';
import 'package:busha_test/models/block_transaction.dart';
import 'package:busha_test/models/transaction.dart';
import 'package:busha_test/services/crypto_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TransactionsViewModel extends BaseViewModel {

  final _navigationService = locator<NavigationService>();
  final _logger = getLogger('TransactionsViewModel');
  late CryptoService _cryptoService;

  TransactionsViewModel(String? blockHash, [CryptoService? service]) {
    _logger.i('blockHash: $blockHash');
    _blockHash = blockHash;
    _cryptoService = service ?? locator<CryptoService>();
  }

  String? _blockHash;
  BlockTransaction? blockTransaction;

  void moveToTransactionDetails({Transaction? tx}) {
    _navigationService.navigateToTransactionDetailsView(tx: tx!);
  }

  Future<void> fetchTransactions() async {
    try {
      final response = await runBusyFuture<BlockTransaction?>(
          _cryptoService.fetchBlockTransactions(blockHash: _blockHash!));
      blockTransaction = response ;
      rebuildUi();
    } on BushaException catch (e) {
      setError(e.message);
    } catch (e) {
      setError("Unknown error has occurred!");
    }
  }
}
