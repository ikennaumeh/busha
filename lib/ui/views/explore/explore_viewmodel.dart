import 'package:busha_test/app/app.locator.dart';
import 'package:busha_test/app/app.logger.dart';
import 'package:busha_test/app/app.router.dart';
import 'package:busha_test/exceptions/busha_exception.dart';
import 'package:busha_test/enum/coin.dart';
import 'package:busha_test/models/asset.dart';
import 'package:busha_test/models/lastest_block.dart';
import 'package:busha_test/models/news.dart';
import 'package:busha_test/models/slider_data.dart';
import 'package:busha_test/services/crypto_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

const String _balanceDelayFuture = 'delayedBalance';
const String _assetsDelayFuture = 'delayedAssets';
const String _moversDelayFuture = 'delayedMovers';
const String _newsDelayFuture = 'delayedNews';

class ExploreViewModel extends MultipleFutureViewModel {
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _cryptoService = locator<CryptoService>();
  final _logger = getLogger('ExploreViewModel');

  bool showBalance = false;
  String? errorMessage;
  String? blockHash;

  void toggleBalanceVisibility() {
    showBalance = !showBalance;
    rebuildUi();
  }

  void actionSeeAllMovers() {}

  void actionViewMoreNewsTrends() {}

  final List<SliderData> _moversList = [
    SliderData(
      image: 'assets/png/ethereum.png',
      title: 'Ethereum',
      dipped: true,
      percent: 1.76,
    ),
    SliderData(
      image: 'assets/png/bitcoin.png',
      title: 'Bitcoin',
      dipped: false,
      percent: 1.76,
    ),
    SliderData(
      image: 'assets/png/solana.png',
      title: 'Solana',
      dipped: false,
      percent: 1.76,
    ),
  ];

  List<SliderData> moversList = [];

  final List<News> _newsList = [
    News(
      image: 'assets/png/elon.png',
      headline:
          'Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy',
      company: 'CoinDesk',
      timeAgo: '2h',
    ),
    News(
      image: 'assets/png/elon.png',
      headline:
          'Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy',
      company: 'CoinDesk',
      timeAgo: '2h',
    ),
    News(
      image: 'assets/png/elon.png',
      headline:
          'Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy',
      company: 'CoinDesk',
      timeAgo: '2h',
    ),
    News(
      image: 'assets/png/elon.png',
      headline:
          'Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy',
      company: 'CoinDesk',
      timeAgo: '2h',
    ),
  ];

  List<News> newsList = [];

  final List<Asset> _assetsList = [
    Asset(
      image: 'assets/png/bitcoin.png',
      title: 'Bitcoin',
      shortHand: 'BTC',
      amount: '24,500,00',
      dipped: false,
      percentage: 1.76,
      coin: Coin.bitcoin,
    ),
    Asset(
      image: 'assets/png/polygon.png',
      title: 'Ethereum',
      shortHand: 'ETH',
      amount: '4,500',
      dipped: true,
      percentage: 6.76,
      coin: Coin.ethereum,
    ),
    Asset(
      image: 'assets/png/tezos.png',
      title: 'Tezos',
      shortHand: 'XTZ',
      amount: '4,500',
      dipped: false,
      percentage: 9.06,
      coin: Coin.tezos,
    ),
  ];

  List<Asset> assetsList = [];

  Future<void> _fetchBalance() async {
    await runBusyFuture(Future.delayed(const Duration(seconds: 2)));
  }

  Future<LatestBlock?> _fetchMyAssets() async {
    try {
      final response = await _cryptoService.fetchLatestBlock();
      assetsList = _assetsList;
      blockHash = response?.hash;
      return response;
    } on BushaException catch (e) {
      setError(true);
      errorMessage = e.message;
      return null;
    } catch (e) {
      setError(true);
      errorMessage = 'Unknown error has occured';
      return null;
    }
  }

  Future<void> _fetchTopMovers() async {
    await runBusyFuture(Future.delayed(const Duration(seconds: 3)));
    moversList = _moversList;
  }

  Future<void> _fetchTrendingNews() async {
    await runBusyFuture(Future.delayed(const Duration(seconds: 2)));
    newsList = _newsList;
  }

  void actionReadNews() {}

  void actionSeeMyAssets() {}

  bool get fetchingBalance => busy(_balanceDelayFuture);
  bool get fetchingAssets => busy(_assetsDelayFuture);
  bool get fetchingMovers => busy(_moversDelayFuture);
  bool get fetchingNews => busy(_newsDelayFuture);

  @override
  Map<String, Future Function()> get futuresMap => {
        _assetsDelayFuture: _fetchMyAssets,
        _moversDelayFuture: _fetchTopMovers,
        _newsDelayFuture: _fetchTrendingNews,
        _balanceDelayFuture: _fetchBalance,
      };

  void actionSearch() {}

  void viewNotifications() {}

  void actionScan() {}

  void moveToTransactionsView({required Asset asset}) {
    if (asset.coin == Coin.ethereum) {
      _snackbarService.showSnackbar(
        title: 'Info',
        message:
            'We currently can\'t fetch transactions for your ${asset.shortHand} asset',
      );
      return;
    }
    if (asset.coin == Coin.bitcoin) {
      _logger.i('gottenHash: $blockHash');
      final assets = asset.copyWith(blockHash: blockHash);
      _navigationService.navigateToTransactionsView(asset: assets);
    } else if (asset.coin == Coin.tezos) {
      _navigationService.navigateToTezosTransactionsView();
    }
  }
}
