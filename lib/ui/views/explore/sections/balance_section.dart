import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:busha_test/ui/views/explore/explore_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BalanceSection extends ViewModelWidget<ExploreViewModel> {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context, ExploreViewModel viewModel) {
    if (viewModel.fetchingBalance) {
      return Ink(
        padding: screenPadding,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonLoader(
              loading: true,
              child: SizedBox(
                height: 10,
                width: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SkeletonLoader(
              loading: true,
              child: SizedBox(
                height: 10,
                width: 50,
              ),
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'My balance',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              Builder(
                builder: (context) {
                  if (viewModel.showBalance) {
                    return IconButton(
                      onPressed: viewModel.toggleBalanceVisibility,
                      icon: const Icon(
                        Icons.visibility_off_rounded,
                        color: Colors.black54,
                      ),
                    );
                  }
                  return IconButton(
                    onPressed: viewModel.toggleBalanceVisibility,
                    icon: const Icon(
                      Icons.visibility_rounded,
                      color: Colors.black54,
                    ),
                  );
                },
              ),
            ],
          ),
          verticalSpace(8),
          Builder(
            builder: (context) {
              if (viewModel.showBalance) {
                return RichText(
                  text: const TextSpan(
                    text: '₦',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '5,000',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '.00',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              }

              return const Text(
                '*****',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Colors.black,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
