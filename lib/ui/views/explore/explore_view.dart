import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'explore_viewmodel.dart';
import 'sections/assets_section.dart';
import 'sections/balance_section.dart';
import 'sections/movers_section.dart';
import 'sections/news_section.dart';

class ExploreView extends StackedView<ExploreViewModel> {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ExploreViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: const Text(
                'Explore',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: viewModel.actionScan,
                icon: SvgPicture.asset(
                  'assets/svg/scan_icon.svg',
                  height: 24,
                  width: 24,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: viewModel.actionSearch,
                  icon: SvgPicture.asset(
                    'assets/svg/search_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
                IconButton(
                  onPressed: viewModel.viewNotifications,
                  icon: SvgPicture.asset(
                    'assets/svg/notification_icon.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: BalanceSection(),
            ),
            SliverToBoxAdapter(
              child: spacedDivider,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'My assets',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: viewModel.actionSeeMyAssets,
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff12A633),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const AssetsSection(),
            SliverToBoxAdapter(
              child: spacedDivider,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Today’s Top Movers',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: viewModel.actionSeeAllMovers,
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff12A633),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  verticalSpace(10),
                  const MoversSection(),
                  verticalSpace(32),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: spacedDivider,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Trending news',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: viewModel.actionViewMoreNewsTrends,
                      child: const Text(
                        'View more',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff12A633),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const NewsSection(),
          ],
        ),
      ),
    );
  }

  @override
  ExploreViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ExploreViewModel();
}
