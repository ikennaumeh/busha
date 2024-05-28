import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'portfolio_viewmodel.dart';

class PortfolioView extends StackedView<PortfolioViewModel> {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PortfolioViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: const Center(
        child: Text("Porfolio view"),
      ),
    );
  }

  @override
  PortfolioViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PortfolioViewModel();
}
