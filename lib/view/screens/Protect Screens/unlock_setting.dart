import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/global_widget.dart';

class UnlockSetting extends StatefulWidget {
  const UnlockSetting({Key? key}) : super(key: key);

  @override
  State<UnlockSetting> createState() => _UnlockSettingState();
}

class _UnlockSettingState extends State<UnlockSetting> {
  final _controller = ValueNotifier<bool>(false);
  final _controllerVibrate = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9eaef),
      appBar: AppBar(
        backgroundColor: Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
        title: Text(
          'Unlock Settings',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 9.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2,color: Colors.grey.shade300)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/pattern.png'),color: Colors.green,height: 2.7.h,),
                        SizedBox(width: 3.w,),
                        Text(
                          'Pattern',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 2.w,),
                Container(
                  height: 9.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 2,color: Colors.grey.shade300)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/pattern.png'),color: Colors.grey.shade300,height: 2.7.h,),
                        SizedBox(width: 3.w,),
                        Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.sp
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 2.h,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1,color: Colors.grey.shade200)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3.w),
                    child: Text(
                      'Options',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.sp
                      ),
                    ),
                  ),
                  recommendContainer(
                      image: 'assets/unlockpat.png',
                      title: 'Change unlock pattern',
                      subtitle: 'Click to change unlock pattern',
                     // controller: _controller
                  ),
                  recommendContainer(
                      image: 'assets/unlockpat.png',
                      title: 'Make pattern visible',
                      subtitle: 'Show the pattern when drawing',
                      controller: _controller
                  ),
                  recommendContainer(
                      image: 'assets/vibrate.png',
                      title: 'Touch vibrate',
                      subtitle: 'Vibrate when draw pattern/input password',
                      controller: _controllerVibrate
                  ),
                  SizedBox(height: 2.h,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
