import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BusyAssetsCard extends StatelessWidget {
  const BusyAssetsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: screenPadding,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SkeletonLoader(
            loading: true,
            child: SizedBox(
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
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
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
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
        ],
      ),
    );
  }
}
