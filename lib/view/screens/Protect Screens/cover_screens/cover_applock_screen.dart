import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../../global_widget/app_color.dart';

class CoverAppLockScreen extends StatefulWidget {
  const CoverAppLockScreen({Key? key}) : super(key: key);

  @override
  State<CoverAppLockScreen> createState() => _CoverAppLockScreenState();
}

class _CoverAppLockScreenState extends State<CoverAppLockScreen> {
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        height: 70.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade300,width: 1)
        ),
        child: Column(
          children: [
            Container(
              height: 60.h,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
              ),
              child: Center(
                child: Container(
                  height: 15.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1,color: Colors.grey.shade300)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height:2.h),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            'Unfortunately, AppLock has stopped.',
                            style: TextStyle(
                                color:
                                Colors.black,
                                fontSize: 12.sp
                            ),
                          ),
                        ),
                        SizedBox(height: 3.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Text(
                            'Ok',
                            style: TextStyle(
                                color: appColor,
                                //Colors.green,
                                fontSize: 12.sp
                            ),),
                        ),
                        //SizedBox(height: 2.h,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'FC',
                      style: TextStyle(
                        color: appColor,
                        //Colors.black,
                        fontSize: 10.sp,
                      ),
                    ),
                    trailing: Padding(
                      padding:  EdgeInsets.only(top: 4.h),
                      child: AdvancedSwitch(
                        controller: _controller,
                        activeColor: appColor,
                        //Colors.green,
                        inactiveColor: Colors.grey,
                        width: 9.w,
                        height: 2.h,
                        enabled: true,
                        disabledOpacity: 0.5,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
