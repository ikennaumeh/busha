import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'spend_viewmodel.dart';

class SpendView extends StackedView<SpendViewModel> {
  const SpendView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SpendViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  SpendViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SpendViewModel();
}
