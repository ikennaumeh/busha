import 'package:busha_test/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/slider_data.dart';

class MoversCard extends StatelessWidget {
  final SliderData movers;
  final VoidCallback? onTap;
  const MoversCard({
    super.key,
    required this.movers,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Ink(
            width: 150,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    movers.image,
                    fit: BoxFit.cover,
                  ),
                ),
                verticalSpace(8),
                Text(
                  movers.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                verticalSpace(8),
                Builder(builder: (context) {
                  if (movers.dipped) {
                    return Row(
                      children: [
                        SvgPicture.asset('assets/svg/arrow_down_right.svg'),
                        Text(
                          movers.percent.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xffC00F00),
                          ),
                        ),
                      ],
                    );
                  }

                  return Row(
                    children: [
                      SvgPicture.asset('assets/svg/arrow_up_right.svg'),
                      Text(
                        movers.percent.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff12A633),
                        ),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
