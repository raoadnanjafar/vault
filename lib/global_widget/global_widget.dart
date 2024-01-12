import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

Widget recommendContainer({
  String? image,
  String? title,
  String? subtitle,
  ValueNotifier<bool>? controller
}){
  return Column(
    children: [
      SizedBox(height: 1.h,),
      Padding(
        padding:  EdgeInsets.only(left: 13.w),
        child: Divider(
          thickness: 1,
          color: Colors.grey.shade200,
        ),
      ),
      Container(
        // height: 10.h,
        child: Row(
          children: [
            if(image != null)
              Expanded(
                flex: 2,
                child: Container(
                  child: Center(
                    child: Image(image: AssetImage(image!),color: Color(0xff49568d),height: 3.5.h,),
                  ),
                ),
              ),

            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 1.5.h,),
                    if(title != null)
                      Text(
                        title!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.sp
                        ),
                      ),
                    SizedBox(height: 0.5.h,),
                    if(subtitle != null)
                      Text(
                        subtitle!,
                        style: TextStyle(
                            color: Color(0xffc1c1c1),
                            fontSize: 11.sp
                        ),
                      ),
                  ],
                ),
              ),
            ),
            if(controller != null)
              Expanded(
                flex: 3,
                child: Container(
                  child: Center(
                    child: AdvancedSwitch(
                      controller: controller,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      width: 9.w,
                      height: 2.h,
                      enabled: true,
                      disabledOpacity: 0.5,

                    ),
                  ),
                ),
              )
          ],
        ),
      )
    ],
  );
}

Widget securityContainer({
  String? image,
  String? title,
  String? subtitle,

}){
  return Column(
    children: [
      SizedBox(height: 1.h,),
      Padding(
        padding:  EdgeInsets.only(left: 13.w),
        child: Divider(
          thickness: 1,
          color: Colors.grey.shade200,
        ),
      ),
      Container(
        // height: 10.h,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Center(
                  child: Image(image: AssetImage(image!),color: Color(0xff49568d),height: 3.5.h,),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1.5.h,),
                    Text(
                      title!,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.sp
                      ),
                    ),
                    SizedBox(height: 0.5.h,),
                    Text(
                      subtitle!,
                      style: TextStyle(
                          color: Color(0xffc1c1c1),
                          fontSize: 11.sp
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
              ),
            )
          ],
        ),
      )
    ],
  );
}

