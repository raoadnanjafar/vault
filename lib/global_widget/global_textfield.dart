import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatefulWidget {
  String? hintText;
  TextEditingController? controller;
  Widget? suffixIcon;
   CustomTextField({this.suffixIcon,this.controller,this.hintText,Key? key}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      child: TextField(
        style: TextStyle(fontSize: 12.sp),
        controller: widget.controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            hintText: widget.hintText,
            labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
            hintStyle: TextStyle(fontSize: 10.sp,color: Colors.grey.shade400),
            fillColor: Color(0xfff3f4f8),
            filled: true,
            suffixIcon: widget.suffixIcon,
            contentPadding: EdgeInsets.only(left: 2.w,right: 2.w,bottom: 1.5.h),
            disabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none
        ),
      ),
    );
  }
}
