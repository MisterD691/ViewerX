import 'package:flutter/material.dart';
import 'package:viewerx/core/ui_data.dart';

class CustomBody extends StatefulWidget {
  const CustomBody(
      {super.key, this.appBar, this.bckColor, required this.child});
  final AppBar? appBar;
  final Color? bckColor;
  final Widget child;

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      backgroundColor: widget.bckColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: UIData.sizes.hPadding10,
            vertical: UIData.sizes.vPadding16,
          ),
          width: double.infinity,
          child: widget.child,
        ),
      ),
    );
  }
}
