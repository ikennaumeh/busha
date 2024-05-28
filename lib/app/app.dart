import 'package:busha_test/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:busha_test/ui/views/login/login_view.dart';
import 'package:busha_test/ui/views/dashboard/dashboard_view.dart';
import 'package:busha_test/ui/views/explore/explore_view.dart';
import 'package:busha_test/ui/views/portfolio/portfolio_view.dart';
import 'package:busha_test/ui/views/earn/earn_view.dart';
import 'package:busha_test/ui/views/connect/connect_view.dart';
import 'package:busha_test/ui/views/spend/spend_view.dart';
import 'package:busha_test/services/network_service.dart';
import 'package:busha_test/ui/views/transactions/transactions_view.dart';
import 'package:busha_test/ui/views/transaction_details/transaction_details_view.dart';
import 'package:busha_test/services/crypto_service.dart';
import 'package:busha_test/ui/views/tezos_transactions/tezos_transactions_view.dart';
import 'package:busha_test/ui/views/tezos_transactions_details/tezos_transactions_details_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: DashboardView),
    AdaptiveRoute(page: ExploreView),
    AdaptiveRoute(page: PortfolioView),
    AdaptiveRoute(page: EarnView),
    AdaptiveRoute(page: ConnectView),
    AdaptiveRoute(page: SpendView),
    AdaptiveRoute(page: TransactionsView),
    AdaptiveRoute(page: TransactionDetailsView),
    MaterialRoute(page: TezosTransactionsView),
    MaterialRoute(page: TezosTransactionsDetailsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: NetworkService),
    LazySingleton(classType: CryptoService),
// @stacked-service
  ],
  logger: StackedLogger(),
)
class App {}
