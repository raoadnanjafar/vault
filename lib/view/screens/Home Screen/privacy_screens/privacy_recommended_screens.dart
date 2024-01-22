import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../global_widget/app_color.dart';
import '../../../../global_widget/global_widget.dart';

class PrivacyRecommendedScreen extends StatefulWidget {
  const PrivacyRecommendedScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyRecommendedScreen> createState() => _PrivacyRecommendedScreenState();
}

class _PrivacyRecommendedScreenState extends State<PrivacyRecommendedScreen> {
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
          'Privacy Recommended',
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
                  showDialog(
                    context: context!,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setState) => AlertDialog(
                          backgroundColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          contentPadding: EdgeInsets.zero,
                          insetPadding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          title: Center(
                            child: Text(
                              'Permission Required',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: appColor,
                                  //Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          content: Container(
                            height: 44.h,
                            //width: 95.w,
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(width: 1,color: Colors.grey.shade300)
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 1.h,),
                                          Container(
                                            height: 12.h,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image: AssetImage('assets/securityy.png'),
                                                  height: 10.h,
                                                  //color: appColor,
                                                ),
                                                //SizedBox(width: 2.w,),
                                                Expanded(
                                                  child: Text(
                                                    'In android 5.0 or above,you must permit usage access for AppLock so that you can use AppLock features.',
                                                    maxLines: 4,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        overflow: TextOverflow.ellipsis,
                                                        color: Color(0xff434343),
                                                        fontSize: 11.sp
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          //SizedBox(height: 1.h,),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              showDialog(
                                                context: context!,
                                                builder: (context) {
                                                  return StatefulBuilder(
                                                    builder: (context, setState) => AlertDialog(
                                                      contentPadding: EdgeInsets.zero,
                                                      insetPadding: const EdgeInsets.all(10),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(5))),
                                                      backgroundColor: Colors.white,
                                                      surfaceTintColor: Colors.white,
                                                      content: Container(
                                                        height: 36.h,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 11.h,
                                                              width: double.infinity,
                                                              decoration: BoxDecoration(
                                                                  color: appColor,
                                                                  //Color(0xff283a68),
                                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                                                              ),
                                                              child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: [
                                                                  Image(image: AssetImage('assets/vaultbg.png'),height: 4.5.h,),
                                                                  Text(
                                                                    'Notice',
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 14.sp
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(height: 1.h,),
                                                            Padding(
                                                              padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                                              child: RichText(
                                                                maxLines: 2,
                                                                text: TextSpan(
                                                                    text: 'Have you enabled the',
                                                                    style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 12.sp
                                                                    ),
                                                                    children: [
                                                                      TextSpan(
                                                                        text: ' Allow AppLock to autostart.',
                                                                        style: TextStyle(
                                                                            color: appColor,
                                                                            //Color(0xff4693e2),
                                                                            fontSize: 12.sp,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                      )
                                                                    ]
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(height: 2.h,),
                                                            Padding(
                                                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                                                              child: Text(
                                                                'The function light not be work properly if the required permission are not enabled.',
                                                                style: TextStyle(
                                                                    fontSize: 12.sp,
                                                                    color: Colors.black
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(height: 3.h,),
                                                            Padding(
                                                              padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    height: 7.h,
                                                                    width: 41.w,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        color: Color(0xfffba631)
                                                                    ),
                                                                    child: Center(
                                                                      child: Text(
                                                                        'Disabled',
                                                                        style: TextStyle(
                                                                            fontSize: 13.sp,
                                                                            color: Colors.white,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(width: 4.w,),
                                                                  Container(
                                                                    height: 7.h,
                                                                    width: 41.w,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(5),
                                                                        color: Color(0xfffba631)
                                                                    ),
                                                                    child: Center(
                                                                      child: Text(
                                                                        'Enabled',
                                                                        style: TextStyle(
                                                                            fontSize: 13.sp,
                                                                            color: Colors.white,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(height: 1.h,)

                                                          ],
                                                        ),

                                                      ),

                                                    ),);
                                                },);
                                            },
                                            child: Container(
                                              height: 5.h,
                                              width: 25.w,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff00b6a7),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'PERMIT',
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 1.h,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.h,),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(width: 1,color: Colors.grey.shade300)
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 1.h,),
                                          Container(
                                            height: 12.h,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Image(
                                                  image: AssetImage('assets/securityy.png'),
                                                  height: 10.h,
                                                  //color: appColor,
                                                ),
                                                //SizedBox(width: 2.w,),
                                                Expanded(
                                                  child: Text(
                                                    'In android 5.0 or above,you must permit usage access for AppLock so that you can use AppLock features.',
                                                    maxLines: 4,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        overflow: TextOverflow.ellipsis,
                                                        color: Color(0xff434343),
                                                        fontSize: 11.sp
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          //SizedBox(height: 1.h,),
                                          Container(
                                            height: 5.h,
                                            width: 25.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xff00b6a7),
                                                borderRadius: BorderRadius.circular(5)
                                            ),
                                            child: Center(
                                              child: Text(
                                                'PERMIT',
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 1.h,),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                          ),

                        ),);
                    },);
                },
                child: privacyListTile(image: 'assets/settings.png',title: 'Settings',subtitle: 'Prevent uninstalling force-stop application' )),
            privacyListTile(image: 'assets/notibg.png',title: 'Private Notification',subtitle: 'Protect notification of locked apps' ),
            privacyListTile(image: 'assets/uibg.png',title: 'System UI',subtitle: 'Prevent watch recent apps' ),
          ],
        ),
      ),
    );
  }
}
