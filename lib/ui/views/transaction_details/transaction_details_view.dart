import 'package:busha_test/models/transaction.dart';
import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:busha_test/ui/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiffy/jiffy.dart';
import 'package:stacked/stacked.dart';

import 'transaction_details_viewmodel.dart';
import 'widgets/content_holder.dart';

class TransactionDetailsView extends StackedView<TransactionDetailsViewModel> {
  const TransactionDetailsView({Key? key, required this.tx}) : super(key: key);

  final Transaction tx;

  @override
  Widget builder(
    BuildContext context,
    TransactionDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: const Text(
          "Transaction details",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: screenPadding,
        children: [
          const SizedBox(
            height: 16,
          ),
          ContentHolder(
            title: 'Hash',
            value: tx.hash ?? '',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Time',
            value:
                '${Jiffy.parseFromDateTime(tx.converted).format(pattern: 'yyyy-mm-dd')} • ${Jiffy.parseFromDateTime(tx.converted).format(pattern: 'HH:mm')}',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Size',
            value: tx.size?.toString() ?? '',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Block index',
            value: tx.blockIndex?.toString() ?? '',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Height',
            value: tx.blockHeight?.toString() ?? '',
          ),
          spacedDivider,
          const ContentHolder(
            title: 'Received time',
            value: '2019-08-24 • 15:43',
          ),
          verticalSpace(40),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svg/external_link_icon.svg',
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                'View on blockchain explorer',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/svg/forward_icon.svg',
                height: 12,
                width: 12,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  TransactionDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TransactionDetailsViewModel();
}
