import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../global_widget/app_color.dart';
import '../../../../global_widget/global_widget.dart';

class AdvanceSettingScreen extends StatefulWidget {
  const AdvanceSettingScreen({Key? key}) : super(key: key);

  @override
  State<AdvanceSettingScreen> createState() => _AdvanceSettingScreenState();
}

class _AdvanceSettingScreenState extends State<AdvanceSettingScreen> {
  final _controllerGallery = ValueNotifier<bool>(false);
  final _controllerLockApp = ValueNotifier<bool>(false);

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
          'Advance Settings',
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
                'Advance Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 11.sp
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            recommendContainer(
                image: 'assets/gallerybgg.png',
                title: 'Hide from gallery',
                subtitle: 'Hide images from gallery via share button',
                controller: _controllerGallery
            ),
            recommendContainer(
                image: 'assets/bulbg.png',
                title: 'Lock the new app',
                subtitle: 'After you installed the new app, you can one tap to lock the app.',
                controller: _controllerLockApp
            ),
            securityContainer(
                image: 'assets/worldbg.png',
                title: 'Choose your language',
                subtitle: 'System language'
            ),
            securityContainer(
                image: 'assets/bookbg.png',
                title: 'About',
                subtitle: 'AppLock v5.8.2'
            ),
            SizedBox(height: 2.h,),
          ],
        ),
      ),
    );
  }
}
