import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/app_color.dart';

class SelfieScreen extends StatefulWidget {
  const SelfieScreen({Key? key}) : super(key: key);

  @override
  State<SelfieScreen> createState() => _SelfieScreenState();
}

class _SelfieScreenState extends State<SelfieScreen> {
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9eaef),
      appBar: AppBar(
        backgroundColor: appColor,
        //Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
        title: Text(
          'Intruder selfie',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Image(
              image: AssetImage('assets/brush.png'),
              color: Colors.white,
              //Color(0xff49568d),
              height: 3.h,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: 10.h,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 1.h,),
                  Container(
                    // height: 10.h,
                    child: Row(
                      children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Center(
                                child: Image(
                                  image: AssetImage('assets/perrbg.png'),
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
                                    'Intruder record',
                                    style: TextStyle(
                                        color: appColor,
                                        //Colors.black,
                                        fontSize: 11.sp
                                    ),
                                  ),
                                SizedBox(height: 0.5.h,),
                                  Text(
                                   'Take photo of intruder if enter wrong\npassword',
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
                              child: Center(
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
                            ),
                          )
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h,),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 22.h),
                    child: Image(
                      image: AssetImage('assets/perrbg.png'),
                      color: appColor.withAlpha(100),
                      //Color(0xffafbdd2),
                      height: 15.h,
                    ),
                  ),
                  SizedBox(height: 1.h,),
                  Text(
                    'Intruder selfie',
                    style: TextStyle(
                      color: appColor,
                      //Colors.black,
                      fontSize: 13.sp
                    ),
                  ),
                  //SizedBox(height: 2.h,),
                  Text(
                    'Take a photo of intruder',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp
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
