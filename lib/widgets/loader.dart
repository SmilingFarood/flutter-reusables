import 'package:flutter/material.dart';
import 'package:flutterreusables/widgets/colors.dart';

class Loader extends StatelessWidget {
  const Loader({Key key, this.opacity = 1.0, this.label = ''})
      : super(key: key);

  final double opacity;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.white.withOpacity(opacity),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Center(
                child: CircularProgressIndicator(
                  backgroundColor: MkColors.blue,
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(MkColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
