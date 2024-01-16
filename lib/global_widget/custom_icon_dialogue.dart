import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_color.dart';

void customIconDialog({String? image, String? text, BuildContext? context,}){
  showDialog(
    context: context!,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Center(
          child: Padding(
            padding:  EdgeInsets.only(left: 28.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage('assets/maskbg.png'),
                    color: appColor,
                    //Color(0xff49568d),
                    height: 3.h
                ),
                SizedBox(width: 14.h,),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.clear,color: Colors.grey,size: 5.w,)),
              ],
            ),
          ),
        ),
        content: Container(
          height: 28.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Disguise as $text',
                  style: TextStyle(
                      color: appColor,
                      //Colors.black,
                      fontSize: 12.sp
                  ),
                ),
              ),
              SizedBox(height: 1.h,),
              Center(
                child: Text(
                  'Click the $text icon to enable this feature.',
                  style: TextStyle(
                      color: Color(0xffa2a2a2),
                      fontSize: 10.sp
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage('assets/album.png'),height: 3.h),
                      SizedBox(height: 1.h,),
                      Text(
                        'Albums',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/camera.png'),height: 3.h),
                      SizedBox(height: 1.h,),
                      Text(
                        'Camera',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage(image!),height: 3.h),
                      SizedBox(height: 1.h,),
                      Text(
                        text!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/chrome.png'),height: 3.h),
                      SizedBox(height: 1.h,),
                      Text(
                        'Chrome',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage('assets/clock.png'),height: 3.h),
                      SizedBox(height: 1.h,),
                      Text(
                        'Clock',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/cogwheel.png'),height: 3.h),
                      SizedBox(height: 1.h,),
                      Text(
                        'Settings',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/playstore.png'),height: 3.h),
                      SizedBox(height: 1.h,),
                      Container(
                        height: 2.h,
                        width: 18.w,
                        child: Text(
                          'Google playStore',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage('assets/maps.png'),height: 3.h),
                      SizedBox(height: 1.h,),
                      Text(
                        'Maps',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),

        ),

      );
    },);
}
