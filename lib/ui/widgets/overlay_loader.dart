import 'package:flutter/material.dart';

class OverlayLoader extends StatelessWidget {
  final bool isBusy;
  final Widget child;
  const OverlayLoader({
    super.key,
    this.isBusy = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [child];

    if (isBusy) {
      children.add(
        Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Color(0xff12A633)),
            ),
          ),
        ),
      );
    }

    return Stack(
      children: children,
    );
  }
}
