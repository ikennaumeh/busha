import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      },
      icon: SvgPicture.asset(
        'assets/svg/back_icon.svg',
        height: 16,
        width: 16,
      ),
    );
  }
}
