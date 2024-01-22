import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vault/view/screens/Setting%20Screen/settings_screen/advance_setting_screen.dart';
import 'package:vault/view/screens/Setting%20Screen/settings_screen/notification_bar_screen.dart';

import '../../../global_widget/app_color.dart';
import '../../../global_widget/global_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  final _controllerGallery = ValueNotifier<bool>(false);
  final _controllerLockApp = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9eaef),
      appBar: AppBar(
        backgroundColor: appColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 6.w,)),
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationBarScreen(),));
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300,width: 0.5)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 2.5.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage('assets/bell.png'),height: 2.5.h,color: Color(0xff00b7a5),),
                                  SizedBox(width: 3.w,),
                                  Text(
                                    'Notifications',
                                    style: TextStyle(
                                        color: Color(0xff00b7a5),
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffb8bac7),size: 5.5.w,)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AdvanceSettingScreen(),));
              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey.shade300,width: 0.5)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 2.5.h,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(image: AssetImage('assets/setbg.png'),height: 2.5.h,color: Color(0xff00b7a5),),
                                  SizedBox(width: 1.5.w,),
                                  Text(
                                    'Advance Settings',
                                    style: TextStyle(
                                        color: Color(0xff00b7a5),
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffb8bac7),size: 5.5.w,)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
