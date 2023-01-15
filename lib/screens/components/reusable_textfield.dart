import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseableTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? inputType;
  bool obscureText;
  Function()? obscureFunction;
  Function(String? search)? onChanged;
  int? maxLength;
  final dynamic FieldKey;
  Widget? prefixIcon;
  String? Function(String?)? validator;
  Color? color;
  bool enabled = true;
  bool? autoFocus;
  Widget? suffixIcon;
  double height;

  ReuseableTextField({
    Key? key,
    this.controller,
    required this.hintText,
    this.inputType,
    this.FieldKey,

    this.obscureText = false,
    this.obscureFunction,
    this.onChanged,
    this.maxLength,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.color = Colors.white,
    this.enabled = true,
    this.autoFocus = false,
    this.height = 56.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: color),
          height: inputType == TextInputType.multiline ? null : height,
          child: TextFormField(
            enabled: enabled,
            controller: controller,
            keyboardType: inputType,
            autofocus:autoFocus!,
            maxLines: inputType == TextInputType.multiline ? null : 1,
            key: FieldKey,
            validator: validator,
            onChanged:onChanged,
            //maxLength: maxLength,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              fillColor: color,
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              prefixIcon: prefixIcon,
              suffixIcon: obscureFunction != null
                  ? IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                  color: Colors.red,
                ),
                onPressed: obscureFunction!,
              )
                  : suffixIcon,
            ),
          ),
        ),
        // Validation Error Msg
        //Text("Hello")
      ],
    );
  }
}


