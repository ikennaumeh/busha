import 'package:busha_test/ui/extensions/build_context_extension.dart';
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
      backgroundColor: context.colorScheme.background,
      body: const Center(
        child: Text("Spend view"),
      ),
    );
  }

  @override
  SpendViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SpendViewModel();
}
