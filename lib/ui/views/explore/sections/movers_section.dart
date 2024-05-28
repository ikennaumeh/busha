import 'package:busha_test/ui/views/explore/explore_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../widget/movers_card.dart';

class MoversSection extends ViewModelWidget<ExploreViewModel> {
  const MoversSection({super.key});

  @override
  Widget build(BuildContext context, ExploreViewModel viewModel) {
    if (viewModel.fetchingMovers) {
      return SizedBox(
        height: 135,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const SkeletonLoader(
              loading: true,
              child: SizedBox(
                height: 130,
                width: 150,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
        ),
      );
    }
    return SizedBox(
      height: 135,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 16),
        itemCount: viewModel.moversList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final movers = viewModel.moversList.elementAt(index);
          return MoversCard(
            movers: movers,
            onTap: () {},
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }
}
