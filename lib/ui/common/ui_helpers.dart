import 'package:flutter/material.dart';

const double _tinySize = 8.0;
const double _largeSize = 50.0;

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);

Widget verticalSpace(double height) => SizedBox(height: height);

EdgeInsetsGeometry screenPadding = const EdgeInsets.only(
  left: 16,
  right: 16,
);

Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceTiny,
    Divider(
      color: Color(0xffF2F3F7),
      height: 5.0,
    ),
    verticalSpaceTiny,
  ],
);
