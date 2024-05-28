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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ConnectViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConnectViewModel();
}
