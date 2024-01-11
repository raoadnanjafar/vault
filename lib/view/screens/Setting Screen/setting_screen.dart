import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../global_widget/global_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final _controller = ValueNotifier<bool>(false);
  final _controllerProfile = ValueNotifier<bool>(false);
  final _controllerGallery = ValueNotifier<bool>(false);
  final _controllerLockApp = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff283a68),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,size: 7.w,)),
        title: Text(
          'Setting',
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
                      'Notification Bar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11.sp
                      ),
                    ),
                  ),
                  recommendContainer(
                    image: 'assets/locbg.png',
                    title: 'Quick lock switch',
                    subtitle: 'Not displayed in notification bar',
                    controller: _controller
                  ),
                  recommendContainer(
                      image: 'assets/arrowbg.png',
                      title: 'Automatic activate profile alert',
                      subtitle: 'Show notification when time lock screen activates the profile',
                      controller: _controllerProfile
                  ),
                  SizedBox(height: 2.h,)
                ],
              ),
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
                      'Advance',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.sp
                      ),
                    ),
                  ),
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
