import 'package:busha_test/ui/extensions/build_context_extension.dart';
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
      backgroundColor: context.colorScheme.background,
      body: const Center(
        child: Text("Earn view"),
      ),
    );
  }

  @override
  EarnViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EarnViewModel();
}
