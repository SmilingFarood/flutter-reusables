import 'package:flutter/material.dart';
import 'package:flutterreusables/res/size_config.dart';
import 'package:flutterreusables/widgets/colors.dart';
import 'package:flutterreusables/widgets/text.dart';

class MkButton extends StatelessWidget {
  const MkButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    @required this.height,
    this.width,
    this.borderColor = MkColors.transparent,
    this.fontWeight = FontWeight.w500,
    this.color = MkColors.blue,
    this.textColor = MkColors.white,
    this.isFlat = false,
    this.fontSize = 14.0,
  })  : assert(
            text != null && onPressed != null && height != null && height > 0),
        super(key: key);

  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool isFlat;
  final double height;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return Container(
      height: config.sh(height),
      width: width != null ? config.sw(width) : null,
      child: FlatButton(
        onPressed: onPressed,
        color: color ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isFlat ? 0.0 : 6.0),
          side: BorderSide(
            color: isFlat
                ? MkColors.transparent
                : borderColor ?? Theme.of(context).primaryColor,
          ),
        ),
        child: MkText(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class MkOutlinedButton extends StatelessWidget {
  const MkOutlinedButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    @required this.height,
    this.width,
    this.borderColor = MkColors.transparent,
    this.fontWeight = FontWeight.w500,
    this.color = MkColors.blue,
    this.textColor = MkColors.blue,
    this.isFlat = false,
    this.fontSize = 14.0,
  })  : assert(
  text != null && onPressed != null && height != null && height > 0),
        super(key: key);

  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool isFlat;
  final double height;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return Container(
      height: config.sh(height),
      width: width != null ? config.sw(width) : null,
      child: OutlineButton(
        onPressed: onPressed,
        color: color ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isFlat ? 0.0 : 6.0),
          side: BorderSide(
            color: isFlat
                ? MkColors.transparent
                : borderColor ?? Theme.of(context).primaryColor,
          ),
        ),
        child: MkText(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
