import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:busha_test/ui/views/explore/explore_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../widget/busy_news_card.dart';
import '../widget/news_card.dart';

class NewsSection extends ViewModelWidget<ExploreViewModel> {
  const NewsSection({super.key});

  @override
  Widget build(BuildContext context, ExploreViewModel viewModel) {
    return SliverLayoutBuilder(
      builder: (context, constraint) {
        if (viewModel.fetchingNews) {
          return SliverList.separated(
            itemCount: 4,
            itemBuilder: (context, index) {
              return BusyNewsCard(index: index);
            },
            separatorBuilder: (context, index) {
              return verticalSpace(8);
            },
          );
        }
        return SliverList.builder(
          itemCount: viewModel.newsList.length,
          itemBuilder: (context, index) {
            final news = viewModel.newsList.elementAt(index);
            return NewsCard(
              news: news,
              index: index,
              onTap: viewModel.actionReadNews,
            );
          },
        );
      },
    );
  }
}
