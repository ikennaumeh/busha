import 'package:busha_test/models/asset.dart';
import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:busha_test/ui/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:jiffy/jiffy.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/overlay_loader.dart';
import 'transactions_viewmodel.dart';

class TransactionsView extends StackedView<TransactionsViewModel> {
  final Asset asset;

  const TransactionsView({Key? key, required this.asset}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TransactionsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "${asset.shortHand} transactions",
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          if (viewModel.isBusy) {
            return OverlayLoader(
              isBusy: viewModel.isBusy,
              child: const SizedBox.shrink(),
            );
          }

          if (viewModel.hasError) {
            return Center(
              child: Text(
                viewModel.modelError ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            );
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              final tx = viewModel.blockTransaction?.tx?.elementAt(index);
              return ListTile(
                title: Text(
                  tx?.hash ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                subtitle: RichText(
                  text: TextSpan(
                    text:
                        Jiffy.parseFromDateTime(tx?.converted ?? DateTime.now())
                            .format(pattern: 'yyyy-mm-dd'),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black45,
                    ),
                    children: [
                      const TextSpan(text: ' '),
                      const TextSpan(text: '•'),
                      const TextSpan(text: ' '),
                      TextSpan(
                        text: Jiffy.parseFromDateTime(
                                tx?.converted ?? DateTime.now())
                            .format(pattern: 'HH:mm'),
                      )
                    ],
                  ),
                ),
                trailing: SvgPicture.asset(
                  'assets/svg/forward_icon.svg',
                  height: 12,
                  width: 12,
                ),
                onTap: () {
                  viewModel.moveToTransactionDetails(tx: tx);
                },
              );
            },
            separatorBuilder: (context, index) {
              return spacedDivider;
            },
            itemCount: viewModel.blockTransaction?.tx?.length ?? 0,
          );
        },
      ),
    );
  }

  @override
  TransactionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TransactionsViewModel(
        asset.blockHash,
      );

  @override
  void onViewModelReady(TransactionsViewModel viewModel) {
    viewModel.fetchTransactions();
    super.onViewModelReady(viewModel);
  }
}
