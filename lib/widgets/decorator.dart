import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin boxDecorators {

  static BoxDecoration containerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(26.0)),
    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 7)],
  );

}