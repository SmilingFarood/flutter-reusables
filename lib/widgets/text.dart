import 'package:flutter/material.dart';
import 'package:flutterreusables/res/size_config.dart';

class MkText extends StatelessWidget {
  const MkText(
    this.text, {
    Key key,
    this.textAlign,
    this.style,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
  })  : assert(text != null),
        super(key: key);

  final String text;
  final TextAlign textAlign;
  final TextStyle style;
  final int maxLines;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return Text(
      text,
      maxLines: maxLines,
      overflow: maxLines != null ? overflow : null,
      textAlign: textAlign,
      style: style?.copyWith(
        fontSize: config.sp(
          style.fontSize ?? 12,
        ),
      ),
    );
  }
}
