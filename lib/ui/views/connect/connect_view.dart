import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'connect_viewmodel.dart';

class ConnectView extends StackedView<ConnectViewModel> {
  const ConnectView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConnectViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: const Center(
        child: Text("Connect view"),
      ),
    );
  }

  @override
  ConnectViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConnectViewModel();
}
