import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterreusables/res/size_config.dart';
import 'package:flutterreusables/widgets/colors.dart';

class MkInputField extends StatelessWidget {
  const MkInputField(
      {@required this.controller,
      @required this.label,
      @required this.currentNode,
      this.hint,
      this.nextNode,
      this.isPassword = false,
      this.autoValidate = false,
      this.errorText,
      this.onChanged,
      this.validator,
      this.borderColor,
      this.onsaved,
      this.keyboard,
      this.initialValue,
      this.copy = false,
      this.isEnabled = true,
      this.onFieldSubmitted,
      this.textInputAction,
      this.maxLines = 1,
      this.showHint = true,
      this.isForgottenOption = false,
      this.inputFormatters})
      : assert(controller != null && label != null);

  final String label;
  final String hint;
  final FocusNode currentNode;
  final FocusNode nextNode;
  final String errorText;
  final bool isPassword;
  final Function(String) onChanged;
  final Function(String) validator;
  final Function(String) onsaved;
  final TextInputType keyboard;
  final bool isEnabled;
  final bool copy;
  final bool autoValidate;
  final String initialValue;
  final TextInputAction textInputAction;
  final dynamic onFieldSubmitted;
  final int maxLines;
  final bool showHint;
  final TextEditingController controller;
  final bool isForgottenOption;
  final List<TextInputFormatter> inputFormatters;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      enabled: isEnabled,
      initialValue: initialValue,
      keyboardType: keyboard,
      obscureText: isPassword,
      onChanged: onChanged,
      validator: validator,
      focusNode: currentNode,
      inputFormatters: inputFormatters,
      onSaved: (String value) {
        FocusScope.of(context).requestFocus(nextNode);
        onsaved(value);
      },
      onFieldSubmitted: (String value) {
        FocusScope.of(context).requestFocus(nextNode);
        onFieldSubmitted(value);
      },
      textInputAction: textInputAction,
      autovalidate: autoValidate,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: MkColors.textGrey.withOpacity(0.3)),
        ),

        fillColor: MkColors.grey,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0),
      ),
    );
  }
}

class MkInputFieldSolid extends StatelessWidget {
  const MkInputFieldSolid(
      {@required this.controller,
        @required this.label,
        @required this.currentNode,
        this.hint,
        this.nextNode,
        this.isPassword = false,
        this.autoValidate = false,
        this.errorText,
        this.onChanged,
        this.validator,
        this.borderColor,
        this.onsaved,
        this.keyboard,
        this.initialValue,
        this.copy = false,
        this.isEnabled = true,
        this.onFieldSubmitted,
        this.textInputAction,
        this.maxLines = 1,
        this.showHint = true,
        this.isForgottenOption = false,
        this.inputFormatters})
      : assert(controller != null && label != null);

  final String label;
  final String hint;
  final FocusNode currentNode;
  final FocusNode nextNode;
  final String errorText;
  final bool isPassword;
  final Function(String) onChanged;
  final Function(String) validator;
  final Function(String) onsaved;
  final TextInputType keyboard;
  final bool isEnabled;
  final bool copy;
  final bool autoValidate;
  final String initialValue;
  final TextInputAction textInputAction;
  final dynamic onFieldSubmitted;
  final int maxLines;
  final bool showHint;
  final TextEditingController controller;
  final bool isForgottenOption;
  final List<TextInputFormatter> inputFormatters;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      enabled: isEnabled,
      initialValue: initialValue,
      keyboardType: keyboard,
      obscureText: isPassword,
      onChanged: onChanged,
      validator: validator,
      focusNode: currentNode,
      inputFormatters: inputFormatters,
      onSaved: (String value) {
        FocusScope.of(context).requestFocus(nextNode);
        onsaved(value);
      },
      onFieldSubmitted: (String value) {
        FocusScope.of(context).requestFocus(nextNode);
        onFieldSubmitted(value);
      },
      textInputAction: textInputAction,
      autovalidate: autoValidate,
      decoration: new InputDecoration(
        fillColor: Colors.white.withOpacity(0.05),
        border: InputBorder.none,
        hintStyle: TextStyle(color: currentNode.hasFocus ? Color(0xff7FBBCA) : Colors.black45),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.cyanAccent)),
        filled: true,
        contentPadding:
        EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}

class PasswordValiditor {
  static String validate(String val) {
    Pattern pattern = r'(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])';
    RegExp regex = RegExp(pattern);
    print(val);
    if (val.isEmpty) {
      return "Enter a password";
    } else if (val.length < 6 || (!regex.hasMatch(val))) {
      return "Password not strong enough";
    } else {
      return null;
    }
  }
}

class EmailValiditor {
  static String validate(String val) {
    print(val);
    if (!val.contains("@") || !val.contains(".")) {
      return "Enter a valid Email address";
    } else if (val.isEmpty) {
      return "Enter your Email address";
    } else {
      return null;
    }
  }
}
