import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:busha_test/ui/views/connect/connect_view.dart';
import 'package:busha_test/ui/views/earn/earn_view.dart';
import 'package:busha_test/ui/views/explore/explore_view.dart';
import 'package:busha_test/ui/views/portfolio/portfolio_view.dart';
import 'package:busha_test/ui/views/spend/spend_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: switch (viewModel.currentIndex) {
        0 => const ExploreView(),
        1 => const PortfolioView(),
        2 => const EarnView(),
        3 => const SpendView(),
        _ => const ConnectView(),
      },
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/explore_icon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/active_explore_icon.svg',
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/portfolio_icon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/active_portfolio_icon.svg',
            ),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/earn_icon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/active_earn_icon.svg',
            ),
            label: 'Earn',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/spend_icon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/active_spend_icon.svg',
            ),
            label: 'Spend',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/connect_icon.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/active_connect_icon.svg',
            ),
            label: 'Connect',
          ),
        ],
        currentIndex: viewModel.currentIndex,
        onTap: viewModel.setIndex,
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashboardViewModel();
}
