import 'package:busha_test/app/app.locator.dart';
import 'package:busha_test/app/app.logger.dart';
import 'package:busha_test/app/app.router.dart';
import 'package:busha_test/exceptions/busha_exception.dart';
import 'package:busha_test/models/tezos_response.dart';
import 'package:busha_test/services/crypto_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TezosTransactionsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _logger = getLogger("TezosTransactionsViewModel");
  late CryptoService _cryptoService;

  TezosTransactionsViewModel([CryptoService? service]) {
    _cryptoService = service ?? locator<CryptoService>();
  }

  List<TezosResponse?> transactionList = [];

  Future<void> fetchTransactions() async {
    try {
      final response = await runBusyFuture<List<TezosResponse?>>(_cryptoService.fetchTezosBlocks());
      transactionList = response;
      rebuildUi();
    } on BushaException catch (e) {
      setError(e.message);
    } catch (e) {
      _logger.e(e.toString());
      setError("Unknown error");
    }
  }

  void moveToTransactionDetails({required TezosResponse tx}) {
    _navigationService.navigateToTezosTransactionsDetailsView(tx: tx);
  }
}
