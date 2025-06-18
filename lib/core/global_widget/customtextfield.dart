import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final TextStyle? hintStyle;
  final TextInputType? inputType;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;
  final Widget? suffix;
  final Widget? prefix;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? txtColor;
  final double? textsize;
  final Color? fillColor;
  final void Function(String)? onFieldSubmitted;
  final double? height;
  final double? width;

  const CustomTextfield({
    super.key,
    this.hintText,
    this.hintStyle,
    this.inputType,
    this.obscureText = false,
    this.minLines = 1,
    this.maxLines = 8,
    this.suffix,
    this.prefix,
    this.backgroundColor,
    this.borderColor,
    this.fillColor,
    this.onFieldSubmitted,
    this.height,
    this.width,
    this.txtColor, this.textsize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        color: fillColor ?? backgroundColor ?? const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: borderColor ?? Colors.transparent),
      ),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: inputType,
        minLines: minLines,
        maxLines: maxLines,
        onFieldSubmitted: onFieldSubmitted,
        style: TextStyle(fontSize: textsize ?? 15.sp, color: txtColor ?? Colors.black,fontWeight: FontWeight.w500),
        textAlignVertical: TextAlignVertical.top, // Top alignment
        decoration: InputDecoration(
          isDense: true,
          hintText: hintText,
          hintStyle:
              hintStyle ?? TextStyle(fontSize: 14.sp, color: Colors.grey),
          prefixIcon: prefix,
          suffixIcon: suffix,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
        ),
      ),
    );
  }
}
