import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'earn_viewmodel.dart';

class EarnView extends StackedView<EarnViewModel> {
  const EarnView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EarnViewModel viewModel,
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
  EarnViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EarnViewModel();
}
