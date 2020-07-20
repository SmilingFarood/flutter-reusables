import 'package:flutter/material.dart';
import 'package:flutterreusables/res/size_config.dart';

class MkSizedBox extends StatelessWidget {
  const MkSizedBox({Key key, this.height, this.width, this.child})
      : super(key: key);

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return SizedBox(
      height: height != null ? config.sh(height) : null,
      width: width != null ? config.sw(width) : null,
      child: child,
    );
  }
}
