import 'package:flutter/material.dart';
import 'package:viewerx/core/ui_data.dart';

Widget getIconCard({
  required Widget icon,
  Color? bckColor,
  double? minHeight,
  double? minWidth,
}) {
  return Container(
    constraints: BoxConstraints(
      minHeight: minHeight ?? 60,
      minWidth: minWidth ?? 60,
    ),
    decoration: BoxDecoration(
        color: bckColor ?? UIData.colors.bckOrange,
        borderRadius: BorderRadius.all(
          Radius.circular(UIData.radius.rounded16),
        )),
    child: Center(child: icon),
  );
}
