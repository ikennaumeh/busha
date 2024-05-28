import 'package:busha_test/models/tezos_response.dart';
import 'package:busha_test/ui/extensions/build_context_extension.dart';
import 'package:busha_test/ui/views/transaction_details/widgets/content_holder.dart';
import 'package:busha_test/ui/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiffy/jiffy.dart';
import 'package:stacked/stacked.dart';

import '../../common/ui_helpers.dart';
import 'tezos_transactions_details_viewmodel.dart';

class TezosTransactionsDetailsView
    extends StackedView<TezosTransactionsDetailsViewModel> {
  final TezosResponse tx;
  const TezosTransactionsDetailsView({Key? key, required this.tx}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TezosTransactionsDetailsViewModel viewModel,
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
                '${Jiffy.parseFromDateTime(tx.timestamp ?? DateTime.now()).format(pattern: 'yyyy-mm-dd')} • ${Jiffy.parseFromDateTime(tx.timestamp ?? DateTime.now()).format(pattern: 'HH:mm')}',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Level',
            value: tx.level?.toString() ?? '',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Reward',
            value: tx.reward?.toString() ?? '',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Bonus',
            value: tx.bonus?.toString() ?? '',
          ),
          spacedDivider,
          ContentHolder(
            title: 'Fees',
            value: tx.fees?.toString() ?? '',
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
  TezosTransactionsDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TezosTransactionsDetailsViewModel();
}
