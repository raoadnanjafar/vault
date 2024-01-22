import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../global_widget/app_color.dart';
import '../../../../global_widget/global_widget.dart';

class NotificationBarScreen extends StatefulWidget {
  const NotificationBarScreen({Key? key}) : super(key: key);

  @override
  State<NotificationBarScreen> createState() => _NotificationBarScreenState();
}

class _NotificationBarScreenState extends State<NotificationBarScreen> {
  final _controller = ValueNotifier<bool>(false);
  final _controllerProfile = ValueNotifier<bool>(false);

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
          'Notification Bar',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.3.w),
              child: Text(
                'Notification Bar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.sp
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            recommendContainer(
                image: 'assets/locbg.png',
                title: 'Quick lock switch',
                subtitle: 'Not displayed in notification bar.',
                controller: _controller
            ),
            recommendContainer(
                image: 'assets/arrowbg.png',
                title: 'Automatic activate profile alert',
                subtitle: 'Show notification when time lock screen activates the profile.',
                controller: _controllerProfile
            ),
            SizedBox(height: 2.h,),
          ],
        ),
      ),
    );
  }
}
