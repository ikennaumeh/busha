import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BusyNewsCard extends StatelessWidget {
  final int index;
  const BusyNewsCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Ink(
        padding: screenPadding.add(
          const EdgeInsets.only(
            top: 12,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SkeletonLoader(
              loading: true,
              child: SizedBox(
                height: 166,
                width: double.infinity,
              ),
            ),
            verticalSpace(16),
            const SkeletonLoader(
              loading: true,
              child: SizedBox(
                height: 10,
                width: 100,
              ),
            ),
            verticalSpace(8),
            const SkeletonLoader(
              loading: true,
              child: SizedBox(
                height: 10,
                width: 150,
              ),
            ),
          ],
        ),
      );
    }
    return Ink(
      padding: screenPadding.add(const EdgeInsets.only(
        top: 12,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SkeletonLoader(
                loading: true,
                child: SizedBox(
                  height: 73,
                  width: 55,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SkeletonLoader(
                    loading: true,
                    child: SizedBox(
                      height: 10,
                      width: 50,
                    ),
                  ),
                  verticalSpace(8),
                  const SkeletonLoader(
                    loading: true,
                    child: SizedBox(
                      height: 10,
                      width: 100,
                    ),
                  ),
                  verticalSpace(8),
                  const SkeletonLoader(
                    loading: true,
                    child: SizedBox(
                      height: 10,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
