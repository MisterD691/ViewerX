import 'package:flutter/material.dart';
import 'package:viewerx/core/ui_data.dart';

class InputButton extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final bool outlined;
  final Color? color;
  final Color? backgroundColor;
  final Function()? onPressed;
  final double? radius;
  final EdgeInsets? padding;

  const InputButton({
    super.key,
    this.text,
    this.outlined = false,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.radius,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      style: TextButton.styleFrom(
        backgroundColor:
            outlined ? null : backgroundColor ?? UIData.colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(radius ?? UIData.radius.rounded16),
          side: outlined
              ? BorderSide(color: backgroundColor ?? UIData.colors.orange)
              : BorderSide.none,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (text != null)
            Flexible(
              child: Padding(
                padding: padding ?? const EdgeInsets.symmetric(vertical: 7.0),
                child: Text(
                  text!,
                  style: textStyle ??
                      TextStyle(
                        color: outlined
                            ? (color ?? UIData.colors.orange)
                            : (color ?? Colors.white),
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
