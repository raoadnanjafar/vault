import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../global_widget/app_color.dart';
import '../../../../global_widget/global_widget.dart';
import '../../Protect Screens/security_setting.dart';
import '../../Protect Screens/selfie_screen.dart';
import '../../Protect Screens/unlock_setting.dart';

class SecurityScreens extends StatefulWidget {
  const SecurityScreens({Key? key}) : super(key: key);

  @override
  State<SecurityScreens> createState() => _SecurityScreensState();
}

class _SecurityScreensState extends State<SecurityScreens> {
  final _controllerFinger = ValueNotifier<bool>(false);

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
          'Security Protection',
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
            //SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.5.w),
              child: Text(
                  'Security'
              ),
            ),
            SizedBox(height: 1.5.h,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UnlockSetting(),));
              },
              child: securityContainer(
                  image: 'assets/unlockbg.png',
                  title: 'Unlock Settings',
                  subtitle: 'Unlock mode: Pattern Lock'
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecuritySettingScreen(),));
              },
              child: securityContainer(
                  image: 'assets/locbg.png',
                  title: 'Security Settings',
                  subtitle: 'Update security email and question'
              ),
            ),
            recommendContainer(
                image: 'assets/fingerbg.png',
                title: 'Use fingerprint',
                subtitle: 'Use your fingerprint',
                controller: _controllerFinger
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SelfieScreen(),));
              },
              child: securityContainer(
                  image: 'assets/perrbg.png',
                  title: 'Intruder Selfie',
                  subtitle: 'Take a photo of intruders'
              ),
            ),
            SizedBox(height: 2.h,)
          ],
        ),
      ),
    );
  }
}
