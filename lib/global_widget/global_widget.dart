import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

import 'app_color.dart';

Widget recommendContainer({
  String? image,
  String? title,
  String? subtitle,
  ValueNotifier<bool>? controller
}){
  return Column(
    children: [
      // SizedBox(height: 1.h,),
      // Padding(
      //   padding:  EdgeInsets.only(left: 13.w),
      //   child: Divider(
      //     thickness: 1,
      //     color: Colors.grey.shade200,
      //   ),
      // ),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 3.w),
        child: Container(
          // height: 10.h,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300,width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              if(image != null)
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Center(
                      child: Image(
                        image: AssetImage(image!),
                        color: appColor,
                        //Color(0xff49568d),
                        height: 3.5.h,
                      ),
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
                              color: appColor,
                              //Colors.black,
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
                      SizedBox(height: 1.h,)
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
                        activeColor: appColor,
                        //Colors.green,
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
        ),
      ),
      SizedBox(height: 1.h,)
    ],
  );
}

Widget securityContainer({
  String? image,
  String? title,
  String? subtitle,
  Widget? widget

}){
  return Column(
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 3.w),
        child: Container(
          // height: 10.h,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300,width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Center(
                    child: Image(
                      image: AssetImage(image!),
                      color: appColor,
                      //Color(0xff49568d),
                      height: 3.5.h,
                    ),
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
                            color: appColor,
                            //Colors.black,
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
                      SizedBox(height: 1.h,)
                    ],
                  ),
                ),
              ),
              if(widget != null)
              Expanded(
                flex: 3,
                child: widget,
              )
            ],
          ),
        ),
      ),
      SizedBox(height: 1.h,)
    ],
  );
}

Widget privacyListTile({
  String? image,
  String? title,
  String? subtitle,

}){
  return Column(
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 3.w),
        child: Container(
          // height: 10.h,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300,width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Center(
                    child: Image(
                      image: AssetImage(image!),
                      //color: appColor,
                      //Color(0xff49568d),
                      height: 3.5.h,
                    ),
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
                            color: appColor,
                            //Colors.black,
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
                      SizedBox(height: 1.h,)
                    ],
                  ),
                ),
              ),
                Expanded(
                  flex: 3,
                  child: Icon(Icons.lock_open_outlined,color: Color(0xffe1e1e1),),
                )
            ],
          ),
        ),
      ),
      SizedBox(height: 1.h,)
    ],
  );
}

