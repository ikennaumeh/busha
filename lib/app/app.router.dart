// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:busha_test/models/asset.dart' as _i15;
import 'package:busha_test/models/tezos_response.dart' as _i17;
import 'package:busha_test/models/transaction.dart' as _i16;
import 'package:busha_test/ui/views/connect/connect_view.dart' as _i8;
import 'package:busha_test/ui/views/dashboard/dashboard_view.dart' as _i4;
import 'package:busha_test/ui/views/earn/earn_view.dart' as _i7;
import 'package:busha_test/ui/views/explore/explore_view.dart' as _i5;
import 'package:busha_test/ui/views/login/login_view.dart' as _i3;
import 'package:busha_test/ui/views/portfolio/portfolio_view.dart' as _i6;
import 'package:busha_test/ui/views/spend/spend_view.dart' as _i9;
import 'package:busha_test/ui/views/startup/startup_view.dart' as _i2;
import 'package:busha_test/ui/views/tezos_transactions/tezos_transactions_view.dart'
    as _i12;
import 'package:busha_test/ui/views/tezos_transactions_details/tezos_transactions_details_view.dart'
    as _i13;
import 'package:busha_test/ui/views/transaction_details/transaction_details_view.dart'
    as _i11;
import 'package:busha_test/ui/views/transactions/transactions_view.dart'
    as _i10;
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i18;

class Routes {
  static const startupView = '/';

  static const loginView = '/login-view';

  static const dashboardView = '/dashboard-view';

  static const exploreView = '/explore-view';

  static const portfolioView = '/portfolio-view';

  static const earnView = '/earn-view';

  static const connectView = '/connect-view';

  static const spendView = '/spend-view';

  static const transactionsView = '/transactions-view';

  static const transactionDetailsView = '/transaction-details-view';

  static const tezosTransactionsView = '/tezos-transactions-view';

  static const tezosTransactionsDetailsView =
      '/tezos-transactions-details-view';

  static const all = <String>{
    startupView,
    loginView,
    dashboardView,
    exploreView,
    portfolioView,
    earnView,
    connectView,
    spendView,
    transactionsView,
    transactionDetailsView,
    tezosTransactionsView,
    tezosTransactionsDetailsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i3.LoginView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i4.DashboardView,
    ),
    _i1.RouteDef(
      Routes.exploreView,
      page: _i5.ExploreView,
    ),
    _i1.RouteDef(
      Routes.portfolioView,
      page: _i6.PortfolioView,
    ),
    _i1.RouteDef(
      Routes.earnView,
      page: _i7.EarnView,
    ),
    _i1.RouteDef(
      Routes.connectView,
      page: _i8.ConnectView,
    ),
    _i1.RouteDef(
      Routes.spendView,
      page: _i9.SpendView,
    ),
    _i1.RouteDef(
      Routes.transactionsView,
      page: _i10.TransactionsView,
    ),
    _i1.RouteDef(
      Routes.transactionDetailsView,
      page: _i11.TransactionDetailsView,
    ),
    _i1.RouteDef(
      Routes.tezosTransactionsView,
      page: _i12.TezosTransactionsView,
    ),
    _i1.RouteDef(
      Routes.tezosTransactionsDetailsView,
      page: _i13.TezosTransactionsDetailsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.LoginView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i3.LoginView(),
        settings: data,
      );
    },
    _i4.DashboardView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i4.DashboardView(),
        settings: data,
      );
    },
    _i5.ExploreView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i5.ExploreView(),
        settings: data,
      );
    },
    _i6.PortfolioView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i6.PortfolioView(),
        settings: data,
      );
    },
    _i7.EarnView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i7.EarnView(),
        settings: data,
      );
    },
    _i8.ConnectView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i8.ConnectView(),
        settings: data,
      );
    },
    _i9.SpendView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i9.SpendView(),
        settings: data,
      );
    },
    _i10.TransactionsView: (data) {
      final args = data.getArgs<TransactionsViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            _i10.TransactionsView(key: args.key, asset: args.asset),
        settings: data,
      );
    },
    _i11.TransactionDetailsView: (data) {
      final args = data.getArgs<TransactionDetailsViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            _i11.TransactionDetailsView(key: args.key, tx: args.tx),
        settings: data,
      );
    },
    _i12.TezosTransactionsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.TezosTransactionsView(),
        settings: data,
      );
    },
    _i13.TezosTransactionsDetailsView: (data) {
      final args =
          data.getArgs<TezosTransactionsDetailsViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i13.TezosTransactionsDetailsView(key: args.key, tx: args.tx),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class TransactionsViewArguments {
  const TransactionsViewArguments({
    this.key,
    required this.asset,
  });

  final _i14.Key? key;

  final _i15.Asset asset;

  @override
  String toString() {
    return '{"key": "$key", "asset": "$asset"}';
  }

  @override
  bool operator ==(covariant TransactionsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.asset == asset;
  }

  @override
  int get hashCode {
    return key.hashCode ^ asset.hashCode;
  }
}

class TransactionDetailsViewArguments {
  const TransactionDetailsViewArguments({
    this.key,
    required this.tx,
  });

  final _i14.Key? key;

  final _i16.Transaction tx;

  @override
  String toString() {
    return '{"key": "$key", "tx": "$tx"}';
  }

  @override
  bool operator ==(covariant TransactionDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.tx == tx;
  }

  @override
  int get hashCode {
    return key.hashCode ^ tx.hashCode;
  }
}

class TezosTransactionsDetailsViewArguments {
  const TezosTransactionsDetailsViewArguments({
    this.key,
    required this.tx,
  });

  final _i14.Key? key;

  final _i17.TezosResponse tx;

  @override
  String toString() {
    return '{"key": "$key", "tx": "$tx"}';
  }

  @override
  bool operator ==(covariant TezosTransactionsDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.tx == tx;
  }

  @override
  int get hashCode {
    return key.hashCode ^ tx.hashCode;
  }
}

extension NavigatorStateExtension on _i18.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToExploreView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.exploreView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPortfolioView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.portfolioView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEarnView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.earnView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConnectView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.connectView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSpendView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.spendView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTransactionsView({
    _i14.Key? key,
    required _i15.Asset asset,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.transactionsView,
        arguments: TransactionsViewArguments(key: key, asset: asset),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTransactionDetailsView({
    _i14.Key? key,
    required _i16.Transaction tx,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.transactionDetailsView,
        arguments: TransactionDetailsViewArguments(key: key, tx: tx),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTezosTransactionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.tezosTransactionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTezosTransactionsDetailsView({
    _i14.Key? key,
    required _i17.TezosResponse tx,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.tezosTransactionsDetailsView,
        arguments: TezosTransactionsDetailsViewArguments(key: key, tx: tx),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithExploreView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.exploreView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPortfolioView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.portfolioView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEarnView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.earnView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithConnectView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.connectView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSpendView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.spendView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTransactionsView({
    _i14.Key? key,
    required _i15.Asset asset,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.transactionsView,
        arguments: TransactionsViewArguments(key: key, asset: asset),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTransactionDetailsView({
    _i14.Key? key,
    required _i16.Transaction tx,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.transactionDetailsView,
        arguments: TransactionDetailsViewArguments(key: key, tx: tx),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTezosTransactionsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.tezosTransactionsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTezosTransactionsDetailsView({
    _i14.Key? key,
    required _i17.TezosResponse tx,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.tezosTransactionsDetailsView,
        arguments: TezosTransactionsDetailsViewArguments(key: key, tx: tx),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
