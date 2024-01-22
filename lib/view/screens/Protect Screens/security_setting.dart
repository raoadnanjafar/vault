import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/app_color.dart';
import '../../../global_widget/global_textfield.dart';

class SecuritySettingScreen extends StatefulWidget {
  const SecuritySettingScreen({Key? key}) : super(key: key);

  @override
  State<SecuritySettingScreen> createState() => _SecuritySettingScreenState();
}

class _SecuritySettingScreenState extends State<SecuritySettingScreen> {
  TextEditingController securityController = TextEditingController();
  TextEditingController ansController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
            child: Icon(Icons.arrow_back,color: Colors.white,size: 6.w,)),
        title: Text(
          'Security Settings',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              Container(
                //height: 30.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300,width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.h,),
                      Text(
                        'Security question',
                        style: TextStyle(
                          color:
                          //appColor,
                          Colors.black,
                          fontSize: 11.sp
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      CustomTextField(
                        controller: securityController,
                        hintText: 'Security question',
                      ),
                      SizedBox(height: 2.h,),
                      CustomTextField(
                        hintText: 'Answer to security question',
                        controller: ansController,
                      ),
                      SizedBox(height: 2.h,),
                      Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff6da19c)
                        ),
                        child: Center(
                          child: Text(
                            'SAVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text(
                        'Security question can be used to reset password when you forget your password.',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.sp,
                            //fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 2.h,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                //height: 30.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300,width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.h,),
                      Text(
                        'Security Email',
                        style: TextStyle(
                            color:
                            //appColor,
                            Colors.black,
                            fontSize: 11.sp
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      CustomTextField(
                        controller: emailController,
                        hintText: 'Enter a security email',
                        suffixIcon: Icon(Icons.edit,color: Color(0xff00b7a5),size: 5.w,),
                      ),
                      SizedBox(height: 2.h,),
                      Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xff6da19c)
                        ),
                        child: Center(
                          child: Text(
                            'SAVE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text(
                        'Security Email can be used to reset password when you forget your password.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.sp,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 2.h,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300,width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 2.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fingerprint Verification',
                                style: TextStyle(
                                  color:
                                  //appColor,
                                  Colors.black,
                                  fontSize: 12.sp
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Text(
                                'Fingerprint Verification can be used to reset\npassword when you forget your password',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11.sp
                                ),
                              ),
                            ],
                          ),
                          AdvancedSwitch(
                            controller: _controller,
                            activeColor: Colors.green,
                            inactiveColor: Colors.grey,
                            // activeChild: Text('ON'),
                            // inactiveChild: Text('OFF'),
                            // activeImage: AssetImage('assets/images/on.png'),
                            // inactiveImage: AssetImage('assets/images/off.png'),
                            // borderRadius: BorderRadius.all(const Radius.circular(15)),
                            width: 9.w,
                            height: 2.h,
                            enabled: true,
                            disabledOpacity: 0.5,

                          )
                        ],
                      ),
                      SizedBox(height: 2.h,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
