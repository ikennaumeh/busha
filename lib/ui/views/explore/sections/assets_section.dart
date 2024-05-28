import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../explore_viewmodel.dart';
import '../widget/asset_card.dart';
import '../widget/busy_asset_card.dart';

class AssetsSection extends ViewModelWidget<ExploreViewModel> {
  const AssetsSection({super.key});

  @override
  Widget build(BuildContext context, ExploreViewModel viewModel) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        if (viewModel.fetchingAssets) {
          return SliverList.separated(
            itemCount: 3,
            itemBuilder: (context, index) {
              return const BusyAssetsCard();
            },
            separatorBuilder: (context, index) {
              return verticalSpace(16);
            },
          );
        }

        if (viewModel.hasError) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: screenPadding,
              child: Text(viewModel.errorMessage ?? ''),
            ),
          );
        }

        return SliverList.separated(
          itemCount: viewModel.assetsList.length,
          itemBuilder: (context, index) {
            final asset = viewModel.assetsList.elementAt(index);
            return AssetsCard(
              asset: asset,
              onTap: () {
                viewModel.moveToTransactionsView(asset: asset);
              },
            );
          },
          separatorBuilder: (context, index) {
            return verticalSpace(16);
          },
        );
      },
    );
  }
}
